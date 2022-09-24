% Copyright 2021, Ratnodeep Bandyopadhyay, All rights reserved.
% University of California, Riverside

classdef ufs_fixedpoint
    properties
        maxBound
        minBound
        
        intMaxBound
        intMinBound

        intWidth
        fracWidth
        totalWidth
    end

    methods

        function obj = FixedPointUFS(intWidth, fracWidth)

            %check to make sure integerWidth has at least 2 bits
            if(intWidth >= 4)
                obj.intWidth = intWidth;
            else
                error('Integer component should have at least 4 bits.')
            end
            
            % check that fracWidth is positive
            if(fracWidth >= 0)
                obj.fracWidth = fracWidth;
            else
                error('Rational component should have a positive number of bits.')
            end

            % print out the total size
            obj.totalWidth = intWidth + fracWidth;
            % determine the max and min bounds for deres
            obj.maxBound = 2^(intWidth - 1) - 2^(-fracWidth);
            obj.minBound = -(2^(intWidth - 1) + 1 - 2^(-fracWidth));
            
            obj.intMaxBound = obj.maxBound * 2^(fracWidth);
            obj.intMinBound = obj.minBound * 2^(fracWidth);
        end


        function res = init(obj, input)
            
            % approximate input to closest available number
            if input > 0
                integer = floor(input);
                rational = round((input - floor(input)) * 2^(obj.fracWidth))/(2^(obj.fracWidth));
            else
                integer = ceil(input);
                rational = round((input - ceil(input)) * 2^(obj.fracWidth))/(2^(obj.fracWidth));           
            end
            
            closestNumber = integer + rational;
            
            % ensure the number is within bounds
            if closestNumber < obj.minBound
                deresNumber = obj.minBound;
            elseif closestNumber > obj.maxBound
                deresNumber = obj.maxBound;
            else
                deresNumber = closestNumber;
            end
            
            % return final result
            res = deresNumber * 2^obj.fracWidth;
        end
        
        % integer deres(implmented in chisel)
        function res = deres(obj, input)
            
            if input > 0
                closestInteger = floor(input);
            else
                closestInteger = ceil(input);
            end
            
            if closestInteger < obj.intMinBound
                res = obj.intMinBound;
            elseif closestInteger > obj.intMaxBound
                res = obj.intMaxBound;
            else
                res = closestInteger;
            end
            
        end
        

        function [res, err] = ufs(obj, rawInput)

            %%%% Initialize constants
            int_1_000 = obj.init(1.0);
            int_0_935 = obj.init(0.935);
            int_0_045 = obj.init(0.045);
            int_1_700 = obj.init(1.700);
            int_1_500 = obj.init(1.5);
            int_3_000 = obj.init(3.0);
            int_2_000 = obj.init(2.0);
            
            % initialize array
            %x = zeros(length(rawInput));
            
            %%%%% DEBUG
            %fprintf("1.000: %.3f\n", int_1_000 / 2^(obj.fracWidth))
            %fprintf("0.935: %.3f\n", int_0_935 / 2^(obj.fracWidth))
            %fprintf("0.045: %.3f\n", int_0_045 / 2^(obj.fracWidth))
            %fprintf("1.700: %.3f\n", int_1_700 / 2^(obj.fracWidth))
            %fprintf("1.500: %.3f\n", int_1_500 / 2^(obj.fracWidth))
            %fprintf("3.000: %.3f\n", int_3_000 / 2^(obj.fracWidth))
            
            for i = 1:length(rawInput)
                x(i) = obj.deres(obj.init(rawInput(i)) / 2);
                %x(i) = (obj.init(rawInput(i)) / 2);
            end
            
            % parse array and store ufs computations in array x
            for i = 1:length(rawInput)
                if x(i) <= -int_3_000
                    x(i) = -int_1_000;
                elseif x(i) < -int_1_700
                    %(int_1_500 *  x(i))
                    %(int_1_000 + -x(i))
                    x(i) = -int_0_935 + ((-int_0_045 * (-x(i) + -int_1_700)) / 2^obj.fracWidth);
                elseif x(i) < 0
                    %x(i) = obj.deres(obj.deres(int_1_500 * x(i)) / obj.deres(int_1_000 + -x(i)));
                    %x(i) = obj.deres((int_1_500 * x(i)) / (int_1_000 + -x(i)));
                    %sprintf("%.3f * %.3f = %.3f", int_1_500,  x(i), int_1_500 *  x(i))
                    %sprintf("%.3f + %.3f = %.3f", int_1_000, -x(i), int_1_000 + -x(i))
                    %(int_1_500 * x(i)) / (int_1_000 + -x(i))
                    x(i) = obj.deres((int_1_500 * x(i)) / (int_1_000 + -x(i)));
                elseif x(i) < int_1_700
                    %(int_1_500 *  x(i))
                    %(int_1_000 + -x(i))
                    %x(i) = obj.deres(obj.deres(int_1_500 * x(i)) / obj.deres(int_1_000 +  x(i)));
                    %x(i) = obj.deres((int_1_500 * x(i)) / (int_1_000 +  x(i)));
                    x(i) = obj.deres((int_1_500 * x(i)) / (int_1_000 +  x(i)));
                elseif x(i) < int_3_000
                    x(i) =  int_0_935 + (( int_0_045 * ( x(i) + -int_1_700))  / 2^obj.fracWidth);
                else
                    x(i) = int_1_000;
                end
                %sprintf("No deres: %.3f", obj.deres(x(i) + int_1_000) / 2)
                x(i) = obj.deres(obj.deres(x(i) + int_1_000) / 2); %%%% NOTE:: WHY IS '2' NOT PLACED THROUGH INIT IN CHISEL????
            end
            
            res = x / 2^obj.fracWidth;
            trueRes  = 1 ./ (1 + exp(-rawInput));
            err = (trueRes - res).^2;
        end
    end
end
