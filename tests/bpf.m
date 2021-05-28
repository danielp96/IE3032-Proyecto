Fl = 15000;
Fh = 5000;


N = 201;
n = -floor(N/2):floor(N/2);

w = hamming(N);

Fs = 44100;
t = (0:1:Fs-1)'/Fs;

test_signal = zeros(size(t));

for f = (0:100:20000)
   test_signal = test_signal + sin(2*pi*f*t);
end

%x = test_signal;

[x, Fs] = audioread('../acoustic.wav');

figure(1);
plotSpectrum(x, Fs)
title("Test Signal");
xlabel("Frecuency (Hz)");



fcl = Fl/Fs;
h_low = 2*fcl*sinc(2*fcl*n)' .* w;

fch = Fh/Fs;
h_high = (sinc(n) - 2*fch*sinc(2*fch*n))' .* w;



y_low = filter(h_low, [1], x);
figure(2);
plotSpectrum(y_low, Fs);
title("Low pass signal");
xlabel("Frecuency (Hz)");

y_high = filter(h_high, [1], x);
figure(3);
plotSpectrum(y_high, Fs);
title("High pass signal");
xlabel("Frecuency (Hz)");

y_band = filter(h_high, [1], y_low);
figure(4);
plotSpectrum(y_band, Fs);
title("Band pass signal");
xlabel("Frecuency (Hz)");
 

function plotSpectrum(data, Fs)
    N = Fs;

    XT = abs(fft(data, N)/N);

    XP = XT(1:N/2+1);
    XP(2:end-1) = 2*XP(2:end-1);

    f = Fs*(0:(N/2))/N;
    f =f';
    
    if (length(f) >= 20000)
        plot(f(1:20000), XP(1:20000));
    else
        plot(f, XP);
    end
end