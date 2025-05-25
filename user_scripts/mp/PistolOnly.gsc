#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\gametypes\_gamelogic;

init()
{
    setDvar("pistolOnly", "0"); // Disabled by default
    setDvar("sv_gametype", "dm"); // Force FFA
    if (getDvarInt("pistolOnly") == 1)
    {
        level thread onPlayerConnect();
    }
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);
        player thread onPlayerSpawned();
    }
}

onPlayerSpawned()
{
    self endon("disconnect");
    for(;;)
    {
        self waittill("spawned_player");
        if(getDvarInt("pistolOnly") == 1)
        {
            self thread applyPistolOnly();
        }
    }
}

applyPistolOnly()
{
    self endon("death");
    self endon("disconnect");
    
    self.maxhealth = 100;
    self.health = 100;
    
    self takeAllWeapons();
    self giveWeapon("h2_deserteagle_mp");
    self setWeaponAmmoClip("h2_deserteagle_mp", 7);
    self setWeaponAmmoStock("h2_deserteagle_mp", 21);
    wait 0.1;
    self switchToWeapon("h2_deserteagle_mp");
    
    self clearPerks();
    self takeWeapon("frag_grenade_mp");
    self takeWeapon("flash_grenade_mp");
    
    self iPrintLnBold("^3Pistol Only (FFA): h2_deserteagle_mp only!");
    
    self thread restrictWeapons();
}

restrictWeapons()
{
    self endon("death");
    self endon("disconnect");
    
    for(;;)
    {
        weapon = self getCurrentWeapon();
        if(isDefined(weapon) && weapon != "none" && weapon != "h2_deserteagle_mp")
        {
            self takeWeapon(weapon);
            self giveWeapon("h2_deserteagle_mp");
            self setWeaponAmmoClip("h2_deserteagle_mp", 7);
            wait 0.1;
            self switchToWeapon("h2_deserteagle_mp");
            self iPrintLnBold("^1Only h2_deserteagle_mp is allowed!");
        }
        wait 0.05;
    }
}