function obj = calcDf(obj, varagin)

% TODO: modify to new datastructure   

% % default detrend filter
% Fs_filt = 10;  % Sampling Frequency
% N     = 5;     % Order
% Fstop = 0.02;  % Stopband Frequency
% Astop = 80;    % Stopband Attenuation (dB)
% h = fdesign.lowpass('n,fst,ast', N, Fstop, Astop, Fs_filt);
% Hd = design(h, 'cheby2', 'SystemObject', true);
% 
%     
% x = obj.rawDat;
% 
% % step 1 - removing low frq trend with LPF
% trend(:,k) = filtfilt(Hd.SOSMatrix,Hd.ScaleValues,x);
% x_detrend = x - trend(:,k); % x1 is the detrended signal
% 
% % step 2 -  cut 15 first sec from data and artifact
% x_detrend = x_detrend + mean(x); % avoiding deviding by 0 with bl
% 
% % step 3 - Baseline estimation according lowest 15%
% Delta_t = 50 * fs; % sec * sr
% s_size = size(x_detrend,1);
% T = time(end);
% num_bin = floor( s_size / Delta_t );
% s_mat_binned = reshape(x_detrend(1:num_bin*Delta_t,:),Delta_t, num_bin, []);
% t_mat_binned = reshape(time(1:num_bin*Delta_t,:),Delta_t, num_bin, []);
% perc = .20; % the percent that the hist values under are probabely bsl
% quantile_vec = quantile(s_mat_binned, perc, 1);
% indx_mat = bsxfun(@(a,b) a < b,s_mat_binned,quantile_vec);
% Y_val = s_mat_binned(indx_mat); X_val = t_mat_binned(indx_mat);
% p = polyfit( X_val, Y_val,1);
% bl(:,k) = polyval(p,time);
% Df_mat(:,k) = (x_detrend-bl(:,k))./abs(bl(:,k));

end

