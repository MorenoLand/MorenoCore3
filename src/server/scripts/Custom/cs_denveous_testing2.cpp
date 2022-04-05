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

#define DEFAULT_MESSAGE 500258


class denveous_item2 : public ItemScript
{
public:
    denveous_item2() : ItemScript("denveous_item2") {}

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/)
    {
        return true;
    }
};

void AddSC_denveous_item2()
{
    new denveous_item2;
}

