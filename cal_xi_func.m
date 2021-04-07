function xi = cal_xi_func(A_1, A_i_plus, i)
    xi = log( A_1/A_i_plus ) / ( (2*pi*i)^2 + (log( A_1/A_i_plus ))^2 )^0.5;
end

