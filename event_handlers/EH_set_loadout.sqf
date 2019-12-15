//REQUIRES CBA A3
//INIT LOADOUT HANDLER
//preInit handler for setting up a loadout for any one unit using ACE getUnitLoadout output arrays
//declare unit class in place of example B_Soldier_F
//declare loadout after setUnitLoadout command
//duplicate code and replace "init" with "respawn" if you want players to get loadout after respawning
//

["B_Soldier_F", "init", { 
    params ["_vehicle"];
    [{
        _this setUnitLoadout [["rhs_weap_m70ab2","","","",["rhssaf_30Rnd_762x39mm_M67",30],[],""],[],[],["rhssaf_uniform_m93_oakleaf",[["FirstAidKit",1],["rhssaf_30Rnd_762x39mm_M67",3,30]]],["rhs_vest_commander",[["rhssaf_30Rnd_762x39mm_M67",1,30],["rhssaf_mag_br_m75",2,1],["rhssaf_mag_brd_m83_white",1,1]]],["UK3CB_UN_B_B_ASS",[["FirstAidKit",4],["rhssaf_30Rnd_762x39mm_M67",6,30],["rhssaf_mag_br_m84",2,1]]],"rhsgref_hat_M1951","",["Binocular","","","",[],[],""],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
    }, _vehicle] call cba_fnc_execnextframe;
}] call CBA_fnc_addClassEventHandler;



