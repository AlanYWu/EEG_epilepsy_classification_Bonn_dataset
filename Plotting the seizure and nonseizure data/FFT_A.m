function FFT_A(data,Fs)
           % Sampling frequency                    
T = 1/Fs;             % Sampling period       
L = length(data);             % Length of signal
%t = (0:L-1)*T;        % Time vector

X = data;
%计算信号的傅里叶变换。
Y = fft(X);
%计算双侧频谱 P2。然后基于 P2 和偶数信号长度 L 计算单侧频谱 P1。
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
end