clearvars; clc; % get_inhe_fre.m

data_mat = [0.67342, 0.48372; 0.71642, 0.47088];

i = 2;
t = 0.096;
T_i = t / (i+1);

un_db_A_1 = data_mat(1, 1);
un_db_A_i_plus = data_mat(1, 2);
un_A_1 = un_db_A_1 / 2; un_A_i_plus = un_db_A_i_plus / 2;
un_xi = cal_xi_func(un_A_1, un_A_i_plus, i); % got
un_f_0 = cal_f0_func(T_i, un_xi); % got

da_db_A_1 = data_mat(2, 1);
da_db_A_i_plus = data_mat(2, 2);
da_A_1 = da_db_A_1 / 2; da_A_i_plus = da_db_A_i_plus / 2;
da_xi = cal_xi_func(da_A_1, da_A_i_plus, i); % got
da_f_0 = cal_f0_func(T_i, da_xi); % got

X = [i, t, T_i, un_db_A_1, un_db_A_i_plus, un_xi, un_f_0;
    i, t, T_i, da_db_A_1, da_db_A_i_plus, da_xi, da_f_0];
disp(X);