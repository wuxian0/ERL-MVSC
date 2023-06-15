%% Draw figures of multi-view semi-supervised classification 
%  of all compared methods

% Code author: Aiping Huang
% Email: sxxhap@163.com
% DateL July 28, 2020.

% DataSets: ALOI Caltech101-all HW MNIST Youtube 3sources BBC4view_685 BBCsports

load gamma.mat

%% ALOI
% ACC = gamma.ALOI;

%% Caltech101
 %ACC = gamma.Caltech101;

%% HW
% ACC = gamma.HW;

%% MNIST
 %ACC = gamma.MNIST;

%% Youtube
 ACC = gamma.Youtube;
 
%% 3sources
%ACC = gamma.sources;
 
%% BBCnews
 %ACC = gamma.BBCnews;
 
%% BBCsports
%ACC = gamma.BBCsports;
% Set axis caption
hold on
x = 1:9;
h1 = plot(x, ACC(1,:), ':v', 'MarkerSize', 5, 'LineWidth', 2);
h2 = plot(x, ACC(4,:), ':o', 'MarkerSize', 5,'LineWidth', 2);
h3 = plot(x, ACC(7,:), ':*', 'MarkerSize', 5, 'LineWidth', 2);
h4 = plot(x, ACC(10,:), ':s', 'MarkerSize', 5, 'LineWidth', 2);
h5 = plot(x, ACC(13,:), ':d', 'MarkerSize', 5, 'LineWidth', 2);
h6 = plot(x, ACC(16,:), ':p', 'MarkerSize', 5, 'LineWidth', 2);
h7 = plot(x, ACC(19,:), ':^', 'MarkerSize', 5, 'LineWidth', 2);
h8 = plot(x, ACC(22,:), ':h', 'MarkerSize', 5, 'LineWidth', 2);
axis([1 9 0 1])
box on
grid on
set(gca,'XTickLabel', [1e-4, 1e-3, 1e-2, 1e-1, 1, 1e+1, 1e+2, 1e+3, 1e+4]);
colormap(cool)
%set(gca,'XTickLabel', [0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, ...
%    0.45, 0.5, 0.55, 0.6, 0.65, 0.7, 0.75, 0.8]);
h = legend([h1,h2,h3,h4,h5,h6,h7,h8], '10%','20%','30%','40%','50%','60%','70%', '80%', ...
    'location', 'southeast');
xlabel('Parameter \gamma')
ylabel('Accuracy')
%set(h, 'Box', 'off')
