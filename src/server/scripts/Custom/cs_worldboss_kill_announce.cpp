#include "RBAC.h"
#include "Config.h"
#include "WorldSession.h"
#include "Player.h"
#include "Chat.h"
#include "World.h"
#include "DatabaseEnv.h"
#include "ScriptMgr.h"
#include "Creature.h"
#include <string> 

class Boss_Announcer : public PlayerScript
{
public:
    Boss_Announcer() : PlayerScript("Boss_Announcer") {}

    void OnCreatureKill(Player* killer, Creature* killed)
    {
        if (killed->isWorldBoss())
        {
            std::string msg;

            msg += "|CFF64FF64World Boss |CFFFFFFFF[";
            msg += killed->GetName();
            msg += "]|r";
            msg += "|CFF64FF64 has been slain by|r ";
            msg += ChatHandler(killer->GetSession()).GetNameLink();
            msg += "|CFF64FF64.";
            sWorld->SendServerMessage(SERVER_MSG_STRING, msg.c_str(), 0);
        }
    }
    void OnUpdateZone(Player* player, uint32 newZone, uint32 newArea) override
    {
        std::string s = std::to_string(newArea);
        uint32 lastZone = newArea;
        //sWorld->SendServerMessage(SERVER_MSG_STRING, "omg" + s, 0);
        switch (newArea)
        {

            case 420:
                player->SetSpeed(MOVE_RUN, 2.0f);
                //sWorld->SendServerMessage(SERVER_MSG_STRING, "dying", 0);
            break;
        }
    }
};

void AddSC_Boss_Announcer()
{
    new Boss_Announcer;
}
