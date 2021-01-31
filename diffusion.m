p = 0.000144;
q = 0.5;
m = 6000000;
num_years = 30 + 10; % 10 years data provided
years = [1:num_years];
I_t = zeros(1, num_years);

I_t(1) = 2307;
I_t(2) = 4541;
I_t(3) = 7114;
I_t(4) = 12156;
I_t(5) = 18948;
I_t(6) = 25502;
I_t(7) = 34022;
I_t(8) = 53861;
I_t(9) = 83175;
I_t(10) = 136617;

for i = 10:num_years
    I_t(i+1) = I_t(i) + p * (m - I_t(i)) + q * (I_t(i)/m) * (m - I_t(i));
end

plot(I_t)
