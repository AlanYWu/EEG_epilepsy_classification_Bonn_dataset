nonseizure  = load("Nonseizure.txt");
seizure = load("Seizure.txt");

%% pwelch
clf;
hold on
x = seizure;
x = normalize(x);
%plot(n,x,'.-');
fs=173.61;
NFFT=1000;
window=100;
noverlap=30;
[pxx,f] = pwelch(x,window,noverlap,NFFT,fs);
plot(f,10*log10(pxx))
xlabel('Frequency (Hz)')
ylabel('PSD (dB/Hz)')


x = nonseizure;
x = normalize(x);
%plot(n,x,'.-');
[pxx,f] = pwelch(x,window,noverlap,NFFT,fs);
plot(f,10*log10(pxx));
legend("Seizure","Nonseizure")
hold off