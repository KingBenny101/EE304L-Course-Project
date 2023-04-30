% Custom Implementation of AWGN Channel 
% Specific to Digital modulation and Complex Symbols
% Assuming input signal has unit average power and is single channel

function y = AWGN_Custom(x,SNR)
    % Converting Db to linear
    signal_power = 10^(1/10);
    SNR = 10^(SNR/10);
    noise_power = signal_power/SNR;
    noise = sqrt(noise_power/2)* complex(randn(size(x)), randn(size(x)));
    y = x + noise;
end