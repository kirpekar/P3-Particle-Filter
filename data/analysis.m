clear all; close all; clc;

landmarks = load('map_data.txt');
plot(landmarks(:,1),landmarks(:,2),'r*'); grid on; hold on;

px = 6.55851; py = 2.63671; theta = 0.310368;

plot(px,py,'bs');
quiver(px,py,20*cos(theta),20*sin(theta));

found_obs = [17.42 -4.5993
    -7.1285 -34.54
    36.203 14.827
    -39.786 -12.615
    28.898 -39.754
    -29.836 -23.277
    36.626 -28.898
    8.7638 7.5647
    20.139 -20.15
    8.2018 -20.97
    -13.641 -0.098341];

plot(found_obs(:,1),found_obs(:,2),'go')

t = linspace(0,2*pi);plot(px+50*cos(t),py+50*sin(t)); axis equal;

obs = [3.46616 4.83987
    8.32537 -9.21901
    -20.2298 4.34647
    -5.65347 -22.0625
    6.26917 -25.2661
    31.9325 2.75112
    -23.9417 -30.7243
    18.9667 -38.131
    -42.4653 -13.0461
    8.32042 -46.8021
    -48.8126 -0.337138];

x_global = px + obs(:,1)*cos(theta) - obs(:,2)*sin(theta);
y_global = py + obs(:,1)*sin(theta) + obs(:,2)*cos(theta);

plot(x_global,y_global,'k^')


cal_code = [5.28858 10.5071
19.0685 -15.4549
-40.8205 2.30691
-4.29872 -44.7976
19.9553 -47.4103
61.499 15.1233
-37.3561 -67.2927
48.6728 -68.6476
-78.9173 -38.4381
30.5371 -88.8269
-95.19 -15.566];


plot(cal_code(:,1),cal_code(:,2),'cv')