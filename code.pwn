#include a_samp
#include ZCMD
#include sscanf

#define COLOR_WHITE 0xFFFFFFAA
#define COLOR_RED 0xAA3333AA

CMD:carcolor(playerid, params[])
{
    new c1,c2;
    new vid = GetPlayerVehicleID(playerid);
    if (vid == 0) return SendClientMessage(playerid, COLOR_WHITE, "{1782d0}USAGE: {ffffff}/carcolor [0-255] [0-255]");
    if(!sscanf(params, "ii", c1,c2)){
        ChangeVehicleColor(vid, c1,c2);
    }
    else
    {
        SendClientMessage(playerid, COLOR_WHITE, "/carcolor [0-255] [0-255]");
    }
    return 1;
}

#AFK, BACK System
CMD:afk(playerid,params[])
{
    SendClientMessage(playerid, COLOR_RED, "You're currently away from keyboard, please don't do any command to avoid abuses");
    SendClientMessage(playerid, COLOR_RED, "{ff0000}SERVER: {FFFFFF}Use {ff1900}/back{FFFFFF} to leave AFK status");
    SetPlayerColor(playerid, 0x000000AA);
    SetPlayerHealth(playerid,10000000);
    TogglePlayerControllable(playerid,0);
    SetPlayerPos(playerid,301.6644,301.8878,1003.5391);
    SetPlayerInterior(playerid,4);
    new name[MAX_PLAYER_NAME];
    new string[999];
    GetPlayerName(playerid,name,MAX_PLAYER_NAME);
	format(string,256,"{d320bd}%s{7d7d7d} now In AFK Lobby.",name);
	SendClientMessageToAll(COLOR_WHITE,string);
    return 1;
}
CMD:back(playerid,params[])
{
    SendClientMessage(playerid, COLOR_RED, "You're back!");
    SetPlayerHealth(playerid,100);
    SetPlayerColor(playerid, 0x44b21eAA);
    TogglePlayerControllable(playerid,1);
    SetPlayerInterior(playerid,0);
    SpawnPlayer(playerid);
    return 1;
}
