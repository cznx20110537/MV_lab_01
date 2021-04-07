clearvars; clc; % plot_curve_un.m

data_path_2 = 'D:\SJTU_junior_2nd_total\ME238-3_Mechanical_Vibrations\homework\lab_report\week_6th_lab01\data\pre_data\sublab_1_dt\Undamped_data.xlsx';
target_path_2 = 'D:\SJTU_junior_2nd_total\ME238-3_Mechanical_Vibrations\homework\lab_report\week_6th_lab01\plot_figures\sublab_1_fg\undamped calculate.png';
undamped_mat = importdata(data_path_2);
undamped_mat = undamped_mat.Sheet1;
undamped_mat = undamped_mat(4: size(undamped_mat,1), 2);
undamped_mat = str2double(undamped_mat);
undamped_mat = undamped_mat(6600:7600);
undamped_mat = undamped_mat';

figure(1);
x_to_fit = 1 : 1 : size(undamped_mat,2);
x_to_fit = x_to_fit./1000;
y_to_fit = undamped_mat;
x_space = 0;
y_space = (max(y_to_fit) - min(y_to_fit) ) / 20;
x_llim = min(x_to_fit) - x_space; x_rlim = max(x_to_fit) + x_space; 
y_llim = min(y_to_fit) - y_space; y_rlim = max(y_to_fit) + y_space; % find limit range of x and y
set(gca, 'xlim', [x_llim, x_rlim]); hold on; set(gca, 'ylim', [y_llim, y_rlim]); hold on;
plot(x_to_fit, y_to_fit); hold on;
peak_pos = [0.38, 0.000322; 0.411, 0.00102; 0.445, -0.00075];
peak_neg = [0.397, -0.05383; 0.428, -0.05443; 0.459, -0.05443];
plot(peak_pos(:,1), peak_pos(:,2)); hold on;
plot(peak_neg(:,1), peak_neg(:,2)); hold on;
saveas(gcf, target_path_2); close all;


