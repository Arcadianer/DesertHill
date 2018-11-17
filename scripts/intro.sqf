start_intro=false;
cutText ["Please Wait","BLACK FADED" ,0];
sleep 3;
_leader=leader player;
_revive=player call ace_medical_fnc_isMedic;
if(_leader==player)then{
_revive==true;
};
if(isJIP==false) then {
[player,true] call ace_medical_fnc_setUnconscious;
cutText ["","BLACK FADED",0];
playMusic "intro";
sleep 5;
execVM "scripts\intro\story_text.sqf";
sleep 15;
execVM "scripts\intro\start_position_text.sqf";
sleep 10;
cutText ["","BLACK IN",10];
if(_revive) then {
sleep 60;
[player,false] call ace_medical_fnc_setUnconscious;
};

}else {
execVM "intro\late.sqf";
cutText ["","BLACK IN" ,5];
}