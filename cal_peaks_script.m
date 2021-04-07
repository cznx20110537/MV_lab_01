[pks,locs_pos] = findpeaks(y_to_fit(:,2));
[pks,locs_neg] = findpeaks(-y_to_fit(:,2));
peak_data1_free_roll_pos = [];
for i_pos = 1 : size(locs_pos)
    peak_data1_free_roll_pos(i_pos,:) = y_to_fit(locs_pos(i_pos),:);
end
peak_data1_free_roll_pos(1,:) = [];
peak_data1_free_roll_neg = [];
for i_neg = 1 : size(locs_neg)
    peak_data1_free_roll_neg(i_neg,:) = y_to_fit(locs_neg(i_neg),:);
end
%peak_data1_free_roll_neg(22:25,:) = [];
peak_data1_free_roll = vertcat(peak_data1_free_roll_pos,peak_data1_free_roll_neg);
peak_data1_free_roll = sortrows(peak_data1_free_roll);