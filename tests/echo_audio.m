%%
Fs = 44100;

t = (0:1:Fs-1)'/Fs;

test_signal = sawtooth(2*pi*5*t);
test_signal(test_signal < 0)=0;
test_signal(10000:end)=0;

x = test_signal;

y = echo_audio(x, 0.5, 0.1, Fs);

% se escucha "hola" con varios ecos

figure(2);
subplot(2,1,1);
plot(t1, x);
title('x');
xlabel('time (s)');

subplot(2,1,2);
plot(t1,y);
title('y');
xlabel('time (s)');

function y = echo_audio(x, alfa, delay, Fs)

    y = zeros(size(x));
    y_n = 0;

    for n = 1:size(x)
        y(n) = x(n) + alfa*y_n;
   
        if (n > delay*Fs)
            y_n = y(n-delay*Fs);
        end
    end
end

