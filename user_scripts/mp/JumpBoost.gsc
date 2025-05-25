init()
{
    level thread onPlayerConnect();
    setDvar("jumpBoost", "0"); //  Enables/disables
    setDvar("jumpHeight", "65"); // Jump height (default: 39)
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
        if(getDvarInt("jumpBoost") == 1)
        {
            self thread applyJumpBoost();
        }
    }
}

applyJumpBoost()
{
    self endon("death");
    self endon("disconnect");
    
    jumpHeight = getDvarInt("jumpHeight");
    setDvar("jump_height", jumpHeight);
    self iPrintLnBold("^3Boost de saut activé : Hauteur = " + jumpHeight);
}