%--------------------------------------------------------------------
% Plot the EEG time series
% INPUTS:
%   fname      : file name
%   subject    : subject number
%   block      : block number
% OUTPUTS: 
%   data_plot : EEG time series
%--------------------------------------------------------------------
function [data_plot] = plotEEGTimeSeries(fname, subject, block)
    % EEG data loading
    data_uV = load(fname);
    data = data_uV.T;

    Fs = 512;   % Sampling frequency
    timeT = 7.75; % Total time of acquisition
    
    t=0:1/Fs:timeT;
    data_plot = data(:,:, subject, block);
    
    figure;
    subplot(1,2,1);
    plot(t, data_plot, 'LineWidth', 2);
    grid on; hold on
    legend('Channel 1', 'Channel 2', 'Channel 3', 'Channel 4', 'Channel 5', ...
        'Channel 6', 'Channel 7', 'Channel 8', 'Channel 9', 'Channel 10', ...
        'Channel 11', 'Channel 12', 'Location','best');
    xlim([0 7.75]); 
    xlabel('Time (s)'); ylabel('Amplitude (\muV)');
    title('EEG Signal - 7.75 seconds');
    
    subplot(1,2,2);
    plot(t, data_plot, 'LineWidth', 2);
    grid on; hold on
    legend('Channel 1', 'Channel 2', 'Channel 3', 'Channel 4', 'Channel 5', ...
        'Channel 6', 'Channel 7', 'Channel 8', 'Channel 9', 'Channel 10', ...
        'Channel 11', 'Channel 12', 'Location','best');
    xlim([0 0.775]); 
    xlabel('Time (s)'); ylabel('Amplitude (\muV)');
    title('EEG Signal - 0.775 seconds');
end
