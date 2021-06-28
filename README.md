# NMEA_message_GPS_data
Real GPS data in the form of NMEA messages, recorded using a smartphone on a bicycle

This repository contains files of real GPS data, of lengths between 10 minutes to about an hour. The data was recorded in the Netherlands, on June 26 and 27, 2021. It was recorded using the app "GPS Info & NMEA Logging", on a Samsung Galaxy A8, using only the GPS antenna (not enhanced by other means). The data was not filtered, smoothed, or enhanced after exporting the data from the app.

The .zip maps are divided in runs, and for each run the following selection of .txt files are available:
- Original data set (NMEA_Log__X_XX_XX__x.m.__XX_XX_XXXX.txt)
- All NMEA messages formatted properly, without all PSAMDLOK messages (NMEA_all.txt)
- GPGGA, GPGLL, GPVTG, GPGSV, GLGSV, GPGSA, GNGSA, GPRMC, and BDGSA messages (NMEA_TYPE.txt)
- A satellite image of the run, made via Matlab (satellite_image.jpg)

Non of the data is anonymized or otherwise altered.

The Matlab .m files used to extract and sort the data from the original data set are also available, which may prove useful if you can run them (Matlab 2020b or later needed)
