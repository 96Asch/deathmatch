:-dynamic
navigation/2,
navPoint/1,
self/3,
pickup/3,
flag/2,
armor/4,
game/4,
orientation/3,
status/4,
score/3,
currentWeapon/2,
udamage/1,
powerup/2,
respawn/0,
recover/2,
fragged/4,
getArmor/2,
item/4,
bot/6,
pickup/1,
weapon/3,
getWeapon/2,
deploy/1,
slowVolume/1,
frag/1,
follow/2,
gotWeapon/1,
gotItem/1,
gotPowerup/1,
gather/2.

% We are at a certain location if the IDs match, or ...
at(UnrealID) :- navigation(reached,UnrealID).
% ... if the coordinates are approximately equal.
at(location(X,Y,Z)) :- navigation(reached,location(X1,Y1,Z1)),
	round(X) =:= round(X1), round(Y) =:= round(Y1), round(Z) =:= round(Z1).
