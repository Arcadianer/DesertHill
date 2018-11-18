params["_unit","_set",["_time",-1]];
if(_set)then{
		if !(_time==-1) then {
			[_unit, true,_time] spawn ace_medical_fnc_setUnconscious;
		}else{ 
		[_unit, true,9999] spawn ace_medical_fnc_setUnconscious;
		};
}else{
	[_unit, false] spawn ace_medical_fnc_setUnconscious;
};

