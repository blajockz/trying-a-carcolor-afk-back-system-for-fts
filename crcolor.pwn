#include a_samp
#include ZCMD
#include sscanf

#define COLOR_WHITE 0xFFFFFFAA

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
