start_title=false;

waitUntil {start_title};
playMusic "title";
sleep 14;
execVM "scripts\title\prodlypresents.sqf";
sleep 28;
execVM "scripts\title\missionname.sqf";