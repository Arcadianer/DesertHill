start_intro=false;
sleep 1;
cutText ["Please Wait","BLACK OUT" ,0];
1 fadeSound 0;
sleep 1;
[player,true] spawn uncon;
sleep 3;
_leader=leader player;
_revive=player call ace_medical_fnc_isMedic;
if(_leader==player)then{
_revive=true;
};
if(not isJIP) then {
waitUntil {start_intro};
[player,true] spawn uncon;
cutText ["","BLACK FADED",140];
playMusic "intro";
sleep 5;
execVM "scripts\intro\story_text.sqf";
sleep 15;
execVM "scripts\intro\start_position_text.sqf";
sleep 35;
cutText ["","BLACK IN",60];
if(_revive) then {
sleep 45;
[player,false] spawn uncon;
5 fadeSound vol;
} else {
sleep 45;
cutText ["<t font='PuristaLight' size='1'>You did not wake up<t/><br/><t>Wait until a medic treats you<t/>","BLACK FADED",140,true,true];
};

}else {

[player,false] spawn uncon;
cutText ["","BLACK IN" ,5];
execVM "scripts\intro\late.sqf";
}