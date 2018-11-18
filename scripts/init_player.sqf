//init
ace_hearing_disableVolumeUpdate = true;
vol = soundVolume;
isJIP=didJIP;

//Functions def
uncon=compile preprocessFile "scripts\functions\fuc_unconscious.sqf";

//Wait for start
execVM "scripts\intro.sqf";
hint "intro starting";