
Fs = 44100;

t = (0:1:Fs-1)'/Fs;

test_signal = sawtooth(2*pi*5*t);
test_signal(test_signal < 0)=0;
test_signal(10000:end)=0;

[songData, Fs] = audioread("../audio_sample_dual_channel.wav");

%x = test_signal;
x = songData;

if (size(x, 2) == 2)
    y(:,1) = echo_effect(x(:,1), 0.5, 0.1, Fs);
    y(:,2) = echo_effect(x(:,2), 0.5, 0.1, Fs);
else
    y = echo_effect(x, 0.5, 0.1, Fs);    
end


% se escucha "hola" con varios ecos

figure(2);
subplot(2,1,1);
plot(x);
title('x');
xlabel('time (s)');

subplot(2,1,2);
plot(y);
title('y');
xlabel('time (s)');

function y = echo_effect(x, alfa, delay, Fs)

    y = zeros(size(x));
    y_n = 0;

    for n = 1:size(x)
        y(n) = x(n) + alfa*y_n;
   
        if (n > delay*Fs)
            y_n = y(n-delay*Fs);
        end
    end
end

