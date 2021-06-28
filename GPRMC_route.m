clear,clc
dataMat = readlines("NMEA_GPRMC.txt");
dataSplit = split(dataMat,",");
%% extract relevant values
% time
t.val       = str2double(dataSplit(:,2));              %GMT+0
t.hour      = floor(t.val./10000);
t.min       = floor( (t.val - t.hour*10000)./100);
t.sec       = floor( (t.val - t.hour*10000 - t.min*100));
t.dec       = t.val - t.hour*10000 - t.min*100 - t.sec;

% other values
lat.val     = str2double(dataSplit(:,4));   % latitude
lat.Hemi    = dataSplit(:,5);               % northern/southern hemisphere
long.val    = str2double(dataSplit(:,6));   % longitude
long.Hemi   = dataSplit(:,7);               % eastern/western hemisphere
speed       = str2double(dataSplit(:,8));   % in knots
course      = str2double(dataSplit(:,9));   % in degrees

% process long&lat
lat.deg     = floor(lat.val/100);
lat.min     = lat.val - lat.deg*100;
long.deg	= floor(long.val/100);
long.min    = long.val - long.deg*100;

lat.deg_ML  = lat.deg+lat.min/60;
long.deg_ML = long.deg+long.min/60;

%% plot course 2D
figure(1);
geoplot(lat.deg_ML,long.deg_ML,'-oc');
geobasemap satellite

%% plot course 3D
%{
h = speed*10;
uif = uifigure;
g = geoglobe(uif);
geoplot3(g,lat.deg_ML,long.deg_ML,h,'-oc')
%}
%% plot speed
figure(2);
t_vec = t.hour+t.min/60+t.sec/3600 + 2;
plot(t_vec,speed*1.862);
xlabel("time (h)");
ylabel("speed (km/h)");
title("speed over time");