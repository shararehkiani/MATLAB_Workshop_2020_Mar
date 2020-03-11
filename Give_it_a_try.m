clc, clear all, close all

%% Give it a try (1)


x = 1/(2^2 + sqrt(3)) + 4/5;

y = sin(pi) + exp(1i* pi);

%%  Give it a try (2)

clear all

x = linspace(0,2*pi, 201);  % x = 0 : pi/100: 2*pi
y1 = 2 * sin(x);
y2 = sin(x);
y3 = 0.5 * sin(x);
figure
plot(x, y1, 'g--', x,y2, 'b-', x, y3, 'r:')
xlabel('0 \leq x \leq 2\pi')
ylabel('Sine functions')
legend('2*sin(x)', 'sin(x)', '0.5*sin(x)')
title('Multiple plots')
axis([0 2*pi -3 3])


%%  Give it a try (3)
clear all

[X, Y] = meshgrid(-10: .5 : 10);
R = sqrt(X.^2 + Y.^2)+ eps ;
Z = sin(R)./R;
figure
subplot(3,1,1)
mesh(X,Y, Z)
title('Mesh plot')
subplot(3,1,2)
surf(X,Y, Z)
title('Surf plot')
subplot(3,1,3)
plot3(X,Y, Z)
title('plot3')
grid on


%%   Give it a try (4)
clear all

A = magic(4)  %rand(4,4)
A([1,4], 3) = 0 



%%   Give it a try (5)
clear all 

A = [ 1 2 3; 4 5 6; 7 8 0];
b = [1; 1; 1];
x = inv(A)*b   % x = A\b   % using backslash operator



%%   Give it a try (6)

clear all
sym x;
x = factorial(32)-exp(100);
x_5 = vpa(x,5)
x_50 = vpa(x,50)   % x_50 = vpa('factorial(32)-exp(100)',50)

%%  Give it a try (7)

clear all
% sym x 
figure
subplot(1,2,1)
ezplot('sin(x)/x',[-4*pi 4*pi]);
title('ezplot')
grid on 
subplot(1,2,2)
fplot(@(y) sin(y)./y,'-*')
title('fplot')
axis([-4*pi 4*pi -.3 1.1 ])
grid on


%%  Give-it-a-try (8)

% Reads in a grade and writes out if the student passes or fails

grade = input('Enter your grade:\n');
if grade >= 50
    fprintf('Congraulations, you passed!')
else
    fprintf('I am sorry, You faild!')
end


%%  Give-it-a-try (9)
clear all

% This program evaluates the sum of the elements of a  m \times n 
% matrix

% read the size of the matrix
m = input('Enter the number of rows \n');
n = input('Enter the number of coumns \n');

% generate the random-valued matrix

A = rand(m,n);

% initialize the sum
sum = 0; 

% loops
for i = 1:m
    for j = 1:n
        sum = sum + A(i,j);
    end
end

fprintf('The total sum is %g\n',sum)


