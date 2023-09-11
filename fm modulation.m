%program for fm modulation and demodulation
%fm=35HZ,fc=500HZ,Am=1V,Ac=1V,B=10
fs=10000;
Ac=1;
Am=1;
fm=35;
fc=500;
B=10;
t=(0:.1*fs)/fs;
wc=2*pi*fc;
wm=2*pi*fc;
m_t=Am*cos(wm*t);
suplot(4,1,1);
plot(t,m_t);
title('Modulating or Message signal(fm=35Hz)')
c_t=Ac*cos(wc*t);
subplot(4,1,2);
plot(t,c_t);
title('Carrier signal(fm=500Hz)');
s_t=Ac*cos((wc*t)+B*sin(wm*t));
subplot(4,1,3);plo(t,s_t);
title('modulated signal');
d=demod(s_t,fc,fs,'fm');
suplot(4,1,4);
plot(t,d);
title('demodulated signal');