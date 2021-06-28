clear,clc
%% Get NMEA messages
dataMat = readlines("NMEA_Log__10_08_52__a.m.__06_26_2021.txt");
dataMat = dataMat(~cellfun('isempty',dataMat));
temp = split(dataMat," - ");
NMEA = temp(:,2);
NMEA(contains(NMEA,"$PSA")) = [];       % remove PSA messages

%% Write them all to a text file

fid = fopen('NMEA_all.txt','wt');
for i = 1:size(NMEA,1)
    fprintf(fid,NMEA(i,1));
    if(i ~= size(NMEA,1))
        fprintf(fid,"\n");
    end
 end
fclose(fid);

%% GPGGA Messages
GPGGA = NMEA;
GPGGA(~contains(NMEA,"$GPGGA")) = [];   %select only correct messages

fid = fopen('NMEA_GPGGA.txt','wt');     %write to file
for i = 1:size(GPGGA,1)
    fprintf(fid,GPGGA(i,1));
    if(i ~= size(GPGGA,1))
        fprintf(fid,"\n");
    end
end
fclose(fid);
%% GPGLL Messages
GPGLL = NMEA;
GPGLL(~contains(NMEA,"$GPGLL")) = [];   %select only correct messages

fid = fopen('NMEA_GPGLL.txt','wt');     %write to file
for i = 1:size(GPGLL,1)
    fprintf(fid,GPGLL(i,1));
    if(i ~= size(GPGLL,1))
        fprintf(fid,"\n");
    end
end
fclose(fid);
%% GPVTG Messages
GPVTG = NMEA;
GPVTG(~contains(NMEA,"$GPVTG")) = [];   %select only correct messages

fid = fopen('NMEA_GPVTG.txt','wt');     %write to file
for i = 1:size(GPVTG,1)
    fprintf(fid,GPVTG(i,1));
    if(i ~= size(GPVTG,1))
        fprintf(fid,"\n");
    end
end
fclose(fid);
%% GPGSV Messages
GPGSV = NMEA;
GPGSV(~contains(NMEA,"$GPGSV")) = [];   %select only correct messages

fid = fopen('NMEA_GPGSV.txt','wt');     %write to file
for i = 1:size(GPGSV,1)
    fprintf(fid,GPGSV(i,1));
    if(i ~= size(GPGSV,1))
        fprintf(fid,"\n");
    end
end
fclose(fid);
%% GLGSV Messages
GLGSV = NMEA;
GLGSV(~contains(NMEA,"$GLGSV")) = [];   %select only correct messages

fid = fopen('NMEA_GLGSV.txt','wt');     %write to file
for i = 1:size(GLGSV,1)
    fprintf(fid,GLGSV(i,1));
    fprintf(fid,"\n");
end
fclose(fid);
%% GPGSA Messages
GPGSA = NMEA;
GPGSA(~contains(NMEA,"$GPGSA")) = [];   %select only correct messages

fid = fopen('NMEA_GPGSA.txt','wt');     %write to file
for i = 1:size(GPGSA,1)
    fprintf(fid,GPGSA(i,1));
    if(i ~= size(GPGSA,1))
        fprintf(fid,"\n");
    end
end
fclose(fid);
%% GNGSA Messages
GNGSA = NMEA;
GNGSA(~contains(NMEA,"$GNGSA")) = [];   %select only correct messages

fid = fopen('NMEA_GNGSA.txt','wt');     %write to file
for i = 1:size(GNGSA,1)
    fprintf(fid,GNGSA(i,1));
    if(i ~= size(GNGSA,1))
        fprintf(fid,"\n");
    end
end
fclose(fid);
%% GPRMC Messages
GPRMC = NMEA;
GPRMC(~contains(NMEA,"$GPRMC")) = [];   %select only correct messages

fid = fopen('NMEA_GPRMC.txt','wt');     %write to file
for i = 1:size(GPRMC,1)
    fprintf(fid,GPRMC(i,1));
    if(i ~= size(GPRMC,1))
        fprintf(fid,"\n");
    end
end
fclose(fid);
%% BDGSA Messages
BDGSA = NMEA;
BDGSA(~contains(NMEA,"$BDGSA")) = [];

fid = fopen('NMEA_BDGSA.txt','wt');     %write to file
for i = 1:size(BDGSA,1)
    fprintf(fid,BDGSA(i,1));
    if(i ~= size(BDGSA,1))
        fprintf(fid,"\n");
    end
end
fclose(fid);