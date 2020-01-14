//function to deploy fp_fnc_cruiseLaunch to unit
//has to be added in initPlayerLocal AND OnPlayerRespawn

params ["_unit"];

private _type = "B_spotter_F"; //can be changed to any class

if (typeOf _unit == _type) then
{
	[
		_unit, //target
		"Designate VLS target", //title in action menu
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa", //idle icon
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_hack_ca.paa", //progress icon
		"true", //show condition
		"true", //show progress
		{ 
			hint "Relaying..." 
		}, //code start
		{

		}, //deploy progress
		{ 
			[_unit] call fp_fnc_cruiseLaunch;
			hint "Missile launched.";
		}, //deploy completed
		{ hint "...canceled" }, //code interrupted
		[], //args
		10, //duration
		nil, //priority
		false, //remove on completion
		false //show when unconscious
	] call BIS_fnc_holdActionAdd;
}