// For testing scripts 

#include "../../../scripts/ScriptPCH.h"
#include "Bag.h"
#include "Common.h"
#include "Chat.h"
#include "Config.h"
#include "Creature.h"
#include "DatabaseEnv.h"
#include "DBCStructure.h"
#include "Define.h"
#include "Field.h"
#include "GameEventMgr.h"
#include "GossipDef.h"
#include "Item.h"
#include "ItemTemplate.h"
#include "Language.h"
#include "Log.h"
#include "Player.h"
#include "ObjectGuid.h"
#include "ObjectMgr.h"
#include "QueryResult.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include "SharedDefines.h"
#include "Transaction.h"
#include "WorldSession.h"
#include "World.h"
#include <sstream>
#include <string>

#define DEFAULT_MESSAGE 500300

class NPC_denveousTesting : public CreatureScript
{
public:
    NPC_denveousTesting() : CreatureScript("NPC_denveousTesting") {}

    struct denveousAI : public CreatureAI
    {
    public: denveousAI(Creature* creature) : CreatureAI(creature) {}
          void UpdateAI(uint32 /*diff*/) {}
          bool OnGossipHello(Player* player) override
          {
              return OnGossipHello(player, me);
          }
          bool OnGossipHello(Player* player, Creature* creature)
          {
              AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|TInterface/PaperDoll/UI-PaperDoll-Slot-MainHand:32:32:-32:0|t Main-Hand", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
              AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|TInterface/PaperDoll/UI-PaperDoll-Slot-SecondaryHand:32:32:-32:0|t Off-Hand", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
              AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|TInterface/PaperDollInfoFrame/UI-GearManager-Undo:32:32:-32:0|t Nevexrmind", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
              SendGossipMenuFor(player, DEFAULT_MESSAGE, creature->GetGUID());
              return true;
          }
    };
    CreatureAI* GetAI(Creature* creature) const override
    {
        return new denveousAI(creature);
    }  
};

void AddSC_NPC_denveousTesting()
{
       new NPC_denveousTesting;
}
