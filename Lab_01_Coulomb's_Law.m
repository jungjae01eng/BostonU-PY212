%%%%%%%%%%%%%%%%%%%%%%%
%     Jungjae Lee     %
%       Lab 01        %
%    July 19, 2022    %
%%%%%%%%%%%%%%%%%%%%%%%

clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Data & Calculation
r = [0.20 0.14 0.10 0.09 0.07 0.06 0.05];
theta_1 = [21 37 48 54 57 61 65];
theta_2 = [27 32 48 51 56 60 65];
theta_3 = [27 37 46 54 58 59 64];
theta_avg = (theta_1 + theta_2 + theta_3)/3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot theta vs r
figure(1);
hold on;
scatter(r,theta_avg,'filled');
grid on;
title('r vs theta');
xlim([0, 0.16]);
ylim([20, 70]);
xlabel('r (m)');
ylabel('theta (degree)');
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Correction for the finite size of the charges
a = 37.3/2;     % radius of the sphere
B = 1-(4*power(a,3)./power(r,3));
theta_new = theta_avg./B;
log(r);
log(theta_new);
disp(B)
disp(theta_new)

% Plot log theta vs log r
figure(2);
hold on;
scatter(log(r),log(theta_new),'filled');
grid on;
title('log(r) vs log(theta)');
xlim([-15, 10]);
ylim([-20, -11.5]);
xlabel('log(theta) (degree)');
ylabel('log(r) (m)');
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Product of theta_new and r^2 versus r
product = theta_new.*(r.^2);
disp(product);

% Plot r vs theta*(r^2)
figure(3);
hold on;
scatter(product, r,'filled');
grid on;
title('r vs theta*(r^2)');
xlim([-0.5, 0.5]);
ylim([0, 0.16]);
xlabel('r (m)');
ylabel('theta*(r^2)');
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part B: Theta vs. kV
kV = [5 4 3 2];
theta_B = [9.8 7.7 6 4.8];

% Plot r vs theta*(1/r^2)
figure(4);
hold on;
scatter(kV, theta_B,'filled');
grid on;
title('kV vs theta');
xlim([1, 6]);
ylim([4, 11]);
xlabel('charge (kV)');
ylabel('theta (degree)');
hold off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Part B: Theta vs. squareroot(kV)
srkV = sqrt(kV);

% Plot r vs theta*(1/r^2)
figure(5);
hold on;
scatter(srkV, theta_B,'filled');
grid on;
title('squareroot(kV) vs theta');
xlim([1.2, 2.4]);
ylim([3, 11]);
xlabel('squareroot(charge) (kV)');
ylabel('theta (degree)');
hold off;