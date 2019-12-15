//surrender script for AI
//define a trigger space within which 33% of AI will surrender
//in activation event of trigger write "[triggerName] execVM "AISurrender.sqf";"
//thanks to diwako for helping out with the animation and trigger setup

_theTrigger = _this # 0;
_unitArray = list _theTrigger;
_unitArray = _unitArray call BIS_fnc_arrayShuffle;
_unitArray resize ((count _unitArray) * 0.33);

{
	[[_x],{
		params["_x"];
		doGetOut _x;
		(units group _x) allowGetIn false;
		_x action ["Eject", vehicle _x];
		waitUntil {uisleep 0.1; vehicle _x == _x};
		_x playMove "AmovPercMstpSsurWnonDnon";
		_x disableAI "ALL";
	}] remoteExec ["spawn", _x];
	uisleep 0.1;
} forEach _unitArray;