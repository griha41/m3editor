private ['_spawnedList', '_index', '_info', '_spawnedList', '_pos', '_position'];
_spawnedList = [1341] call M3E_fnc_getEditorControl;
_index = lbCurSel _spawnedList;
if (_index == -1) exitWith {};
M3E_selectedObject = M3E_insertedObjects select _index;
M3E_selectedObject enableSimulation false;
_spawnedList lbSetCurSel (M3E_insertedObjects find M3E_selectedObject);
_position = [getPosASL M3E_selectedObject, M3E_cameraWorldspace select 1, -(M3E_cameraWorldspace select 2), -20] call M3E_fnc_transformPosition;
M3E_cameraWorldspace set [0, _position];
call M3E_fnc_cam_position;
call M3E_fnc_loadObjectInfo;