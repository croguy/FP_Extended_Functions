//function that when executed launches a cruise missile at designated target
//function will not fire anything if unit does not have an active designator
//implementation best by as visible in fn_addCruiseDesignator.sqf
//example: [player] call fp_fnc_cruiseLaunch

params [
	["_unit", objNull]
];
if (laserTarget _unit == objNull) exitWith {};

private _laserPos = getPosATL laserTarget _unit;
private _missilePos = [_laserPos select 0, _laserPos select 1, 5000];

private _launchedMissile = createVehicle ["ammo_Missile_Cruise_01", _missilePos];
_launchedMissile setVectorDirAndUp [[0,0,-1], _missilePos];