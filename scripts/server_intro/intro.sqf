start_intro=false;
admin_start=false;

onPlayerConnected {isJip = _jip; _owner publicVariableClient "isJip"};

waitUntil(admin_start);
start_intro=true;
publicVariable start_intro;