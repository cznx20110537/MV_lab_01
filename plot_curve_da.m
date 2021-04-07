clearvars; clc; % plot_curve_da.m

data_path_1 = 'D:\SJTU_junior_2nd_total\ME238-3_Mechanical_Vibrations\homework\lab_report\week_6th_lab01\data\pre_data\sublab_1_dt\Damped_data.xlsx';
target_path_1 = 'D:\SJTU_junior_2nd_total\ME238-3_Mechanical_Vibrations\homework\lab_report\week_6th_lab01\plot_figures\sublab_1_fg\damped calculate.png';
damped_mat = importdata(data_path_1);
damped_mat = damped_mat.Sheet1;
damped_mat = damped_mat(4: size(damped_mat,1), 2);
damped_mat = str2double(damped_mat);
damped_mat = damped_mat(6600:7600);
damped_mat = damped_mat';


figure(1);
x_to_fit = 1 : 1 : size(damped_mat,2);
x_to_fit = x_to_fit./1000;
y_to_fit = damped_mat;
x_space = 0;
y_space = (max(y_to_fit) - min(y_to_fit) ) / 20;
x_llim = min(x_to_fit) - x_space; x_rlim = max(x_to_fit) + x_space; 
y_llim = min(y_to_fit) - y_space; y_rlim = max(y_to_fit) + y_space; % find limit range of x and y
set(gca, 'xlim', [x_llim, x_rlim]); hold on; set(gca, 'ylim', [y_llim, y_rlim]); hold on;
plot(x_to_fit, y_to_fit); hold on;
peak_pos = [0.52, 0.03224; 0.556, 0.02914; 0.59, 0.01586];
peak_neg = [0.535, -0.05733; 0.569, -0.07116; 0.6, -0.07277];
plot(peak_pos(:,1), peak_pos(:,2)); hold on;
plot(peak_neg(:,1), peak_neg(:,2)); hold on;
saveas(gcf, target_path_1); close all;


