1;
disp('Running scriptfile: faste.m...');
% careting a range of inputs
x=-6:0.01:6;
k_sigmoid=1; %convert this and ultra to 9 and fastsigmoid to 1, or...
k_fastsigmoid=0.35; % convert this to 0.11(512), 0.255(16), 0.35(8) and ultra and k_sig to 1 
k_ultrafast=1;


% plot original sigmoid
function sigmoidans = sigmoid(x)
    sigmoidans=1./(1+e.^(-x));
endfunction


function res=deres(input)
    round(input);
    bit_length = 15;
    max_intn = 2^(bit_length - 1) - 1;
    input(input>max_intn) = max_intn;
    input(input<-max_intn) = -max_intn;

    res = input;
endfunction



function res=scale_ultrafast(input, sf)
    
    max_fp32=3;
    min_fp32=-3;

    input(input>max_fp32) = max_fp32;
    input(input<min_fp32) = min_fp32;

    res = round(sf * input);

endfunction
   


function result=ultrafastpiecewise_nbit(x)
    bit_length = 8;
    max_intn = 2^(bit_length - 1) - 1;
    sf = sqrt(max_intn)/3;%;

    x = scale_ultrafast(x./2, sf);
    halfbaked=0;
    if x<=scale_ultrafast(-3, sf)
        halfbaked= scale_ultrafast(-0.99505475368673, sf * sf);%;
    elseif x<scale_ultrafast(-1.7, sf)
        halfbaked=-deres(scale_ultrafast(0.935409070603099, sf * sf) + deres(scale_ultrafast(0.0458812946797165, sf) * deres( -x - scale_ultrafast(1.7, sf))));%;
    elseif x<scale_ultrafast(0, sf)
        %make sure to first divide THEN multiply sf into quotient
        halfbaked=-deres(sf * deres(deres(scale_ultrafast(1.5, sf) * -x) / deres(scale_ultrafast(1, sf) - x)));
    elseif x<scale_ultrafast(1.7, sf)
        %make sure to first divide THEN multiply sf into quotient
        halfbaked= deres(sf * deres(deres(scale_ultrafast(1.5, sf) *  x) / deres(scale_ultrafast(1, sf) + x)));
    elseif x<scale_ultrafast(3, sf)
        halfbaked= deres(scale_ultrafast(0.935409070603099, sf * sf) + deres(scale_ultrafast(0.0458812946797165, sf) * deres(  x - scale_ultrafast(1.7, sf))));%;
    else
        halfbaked= scale_ultrafast( 0.99505475368673, sf * sf);%;
    endif
    result=((halfbaked/(sf * sf)) + 1)/2;
endfunction


function ultrafastans=ultrafastsigmoid(x)
    for i=1:length(x)
        ultrafastans(i)=ultrafastpiecewise_nbit(x(i));
    endfor
endfunction


% deres resolution at b bits f fixed
function res=deres_old(input)
    %determine the bit lengths of the inputs
    b_L=8;
    b_Q=5;
    b_Z=b_L-b_Q;
    %calculate lower and upper bounds
    upper_bound=2^(b_Z - 1) - 2^(-b_Q);
    % deres resolution at b bits f fixed

    lower_bound=-upper_bound-1;
    %floor rational part of fp number to closest fraction
    input = round(2^b_Q .* input)./(2^b_Q);
    %cap between lower and higher bounds
    input(input<lower_bound) = lower_bound;
    input(input>upper_bound) = upper_bound;

    %return res
    res = input;
endfunction


function res=scale_fastexp(input, sf)
    
    max_fp32=3;
    min_fp32=-max_fp32;

    input(input>max_fp32) = max_fp32;
    input(input<min_fp32) = min_fp32;

    res = round(sf * input);%;

endfunction



function res=deres_var(input)
    round(input);
    total_bits = 32;
    max_int = 2^(total_bits-1) - 1;%;
    min_int = -max_int;

    input(input>max_int) = max_int;
    input(input<min_int) = min_int;

    res = input;
endfunction



% for modified fast exponentiation
function res=fastexp_8bit(x, k, sf)
    
    scaledx = scale_fastexp(x, sf);
    x_old = ones(size(scaledx));
    for i=1:log2(k)
        x_new = (sf + (scaledx./i)).^i;
        x_old = (x_old .* x_new);
    end
  
    res=x_old;
endfunction


function res=sigmoid_fastexp_512_8bit(x, k = 8)
    max_fp32 = 3;
    total_bits = 32;
    max_intn = 2^(total_bits - 1) - 1;
    sf_exp = log2(k) * (log2(k) + 1) / 2;
    sf = (max_intn/max_fp32)^(1/sf_exp);
    sf_total = (max_intn)/max_fp32;
    
    res = (sf_total./(sf_total + fastexp_8bit(-x, k, sf)));
endfunction


function errorFastAns=errorFast(x, k_sig, k_fastsig)
    errorFastAns=((sigmoid(k_sig.*x)-sigmoid_fastexp_512_8bit(k_fastsig.*x)).^2);
endfunction


function res=errorUltraFast(x, k_sig, k_ultrasig)
    res=((sigmoid(k_sig.*x)-ultrafastsigmoid(k_ultrasig.*x)).^2);
endfunction


function plotSigmoids(x, k_sig, k_fastsig, k_ultrasig)
    figure(1);
    plot(x, sigmoid(k_sig.*x),';sigmoid;',
        %x, sigmoid_fastexp_512_8bit(k_fastsig.*x),';sigmoid\_fastexp\_8\_int32;',
        x, ultrafastsigmoid(x), ';ultrafast\_sigmoid\_int15;');
    title('Sigmoid Functions');
    legend ("location", "southeast");
endfunction


function plotErrors(x, k_sig, k_fastsig, k_ultrasig)
    figure(2);
    plot(x,errorFast(x, k_sig, k_fastsig),';sigmoid\_fastexp\_8\_int32\_error;',x,errorUltraFast(x, k_sig, k_ultrasig),';ultrafast\_sigmoid\_int15\_error;');
    %plot(x,errorUltraFast(x, k_sig, k_ultrasig),';ultrafast\_sigmoid\_int15\_error;');
    title('Errors of Sigmoid Approximations');
    legend ("location", "northeast");
endfunction


plotErrors(x, k_sigmoid, k_fastsigmoid, k_ultrafast)
plotSigmoids(x, k_sigmoid, k_fastsigmoid, k_ultrafast)
pause;

