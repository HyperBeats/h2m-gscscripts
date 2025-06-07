init()
{
    level thread onPlayerConnect();
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);
        player thread checkPlayerName();
    }
}

checkPlayerName()
{
    self endon("disconnect");

    playerName = self.name;

    allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+@[]()_-.*#| ";

    for(i = 0; i < playerName.size; i++)
    {
        char = getSubStr(playerName, i, i + 1);
        if(!isSubStr(allowedChars, char))
        {
            wait 1; 
            kick(self getEntityNumber(), "Invalid username. Use only letters, numbers, or allowed symbols (+@[]()_-.*#|");
            return;
        }
    }

    self iPrintLnBold("Welcome to the server!");
}