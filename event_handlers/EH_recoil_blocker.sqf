//REQUIRES CBA A3
//TURRET RECOIL BLOCKER
//XEH preinit class event handler that runs every time weapon is fired
//prevents all recoil by attaching object to anchor object for 3 seconds
//thanks to nigel and cuel for helping me out with video game jank
//

["vehicleClassName", "fired", {  
    params ["_vehicle"]; 
    _vehicle spawn {
        _this setVelocity [0,0,0];
        _this attachTo [anchor];
        sleep 3;
        detach _this;
    };
}] call CBA_fnc_addClassEventHandler;