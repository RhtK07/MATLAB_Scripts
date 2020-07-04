clc;clear all;close all

fprintf('Aim : To normalise the given audios\n');

%%Taking the audio locationa and destlocation_chime.scpination
audio_file_loc = importdata('location_chime.scp');

%audio_file_dest = importdata('/home/rohitk/Workspace/MSpace/Complex_mask_estimation/train_text/CTM_model3_mvdr_normalise/etf_real.scp');


loop_run = numel(audio_file_loc);

fprintf('The loop starts now\n');

for i=1:loop_run
    location = audio_file_loc{i}

    [signal,fs] = audioread(location);

    max_v = 1 ;

    m_signal = audioNormalization_YW(signal,max_v);

    destination = audio_file_loc{i}

    audiowrite(destination,m_signal,fs)

end

fprintf('Normalisation of audio is done\n');
