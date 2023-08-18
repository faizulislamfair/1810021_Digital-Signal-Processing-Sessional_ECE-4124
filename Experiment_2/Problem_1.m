x = input('Enter the first signal: ');
subplot(3, 1, 1);
stem(x);

h = input('Enter the second signal: ');
subplot(3, 1, 2);
stem(h);

N = length(x);
M = length(h);

if N > M
    h = [h zeros(1,N-M)];
else
    x = [x zeros(1,M-N)];
end

y = zeros(1, N);
for n = 1:N
    for m = 1:N
        k = mod(n - m, N) + 1;
        y(n) = y(n) + x(m) * h(k);
    end
end

disp('Circular Convolution Output: ');
disp(y);
subplot(3, 1, 3);
stem(y);