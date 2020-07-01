clc;clear all;

%Aim: This code is being written to normalise the audio in the specified
%range

[x,fs]=audioread('mono_c1.wav');
%subplot(2,1,1)
%plot(x)

%Now in this section take the audio you want to normalise and specify the
%range

max_v=1; %this value shold be kept between 0 to 1

x = audioNormalization_YW(x,max_v);

%subplot(2,1,2)
%plot(x)

fprintf('End\n');