tt = 0:1e-6:1e-3;
rr = 0.4*randn(size(tt));

ftt = fft(rr)/length(rr);
ftt = ftt(1:floor(length(ftt)/2));
ftt(2:length(ftt)) = 2*ftt(2:length(ftt));
freqtt = (0:length(ftt)-1)*0.5*1/(tt(2) - tt(1))/length(ftt);

subplot(2,1,1),loglog(freqtt,abs(ftt));hold on;
subplot(2,1,2),plot(tt,rr);hold on;

tt = 0:1e-6/2:1e-3;
rr = 0.4*randn(size(tt));

ftt = fft(rr)/length(rr);
ftt = ftt(1:floor(length(ftt)/2));
ftt(2:length(ftt)) = 2*ftt(2:length(ftt));
freqtt = (0:length(ftt)-1)*0.5*1/(tt(2) - tt(1))/length(ftt);

subplot(2,1,1),loglog(freqtt,abs(ftt));hold on;
subplot(2,1,2),plot(tt,rr);hold on;

tt = 0:1e-6/4:1e-3;
rr = 0.4*randn(size(tt));

ftt = fft(rr)/length(rr);
ftt = ftt(1:floor(length(ftt)/2));
ftt(2:length(ftt)) = 2*ftt(2:length(ftt));
freqtt = (0:length(ftt)-1)*0.5*1/(tt(2) - tt(1))/length(ftt);

subplot(2,1,1),loglog(freqtt,abs(ftt));grid on;hold off;
subplot(2,1,2),plot(tt,rr);grid on;hold off

subplot(2,1,1)
ylabel('Absolute Amplitude')
xlabel('Freq [Hz]')

subplot(2,1,2)
ylabel('time series')
xlabel('Time [sec]')
