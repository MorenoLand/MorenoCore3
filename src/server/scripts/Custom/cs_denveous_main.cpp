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
#include <sstream>
#include <string>

#define DEFAULT_MESSAGE 500258

struct VisualData2
{
    uint32 Menu;
    uint32 Submenu;
    uint32 Icon;
    uint32 Id;
    std::string Name;
};


VisualData2 vData2[] =
{
    { 1, 0, GOSSIP_ICON_BATTLE, 3789, "Berserking" },
    { 1, 0, GOSSIP_ICON_BATTLE, 3854, "Spell Power" },
    { 1, 0, GOSSIP_ICON_BATTLE, 3273, "Deathfrost" },
    { 1, 0, GOSSIP_ICON_BATTLE, 3225, "Executioner" },
    { 1, 0, GOSSIP_ICON_BATTLE, 3870, "Blood Draining" },
    { 1, 0, GOSSIP_ICON_BATTLE, 1899, "Unholy Weapon" },
    { 1, 0, GOSSIP_ICON_BATTLE, 2674, "Spellsurge" },
    { 1, 0, GOSSIP_ICON_BATTLE, 2675, "Battlemaster" },
    { 1, 0, GOSSIP_ICON_BATTLE, 2671, "Arcane and Fire Spell Power" },
    { 1, 0, GOSSIP_ICON_BATTLE, 2672, "Shadow and Frost Spell Power" },
    { 1, 0, GOSSIP_ICON_BATTLE, 3365, "Rune of Swordshattering" },
    { 1, 0, GOSSIP_ICON_BATTLE, 2673, "Mongoose" },
    { 1, 0, GOSSIP_ICON_BATTLE, 2343, "Spell Power" },
    { 1, 2, GOSSIP_ICON_TALK, 0, "Next ->" },

    { 2, 0, GOSSIP_ICON_BATTLE, 425, "Black Temple Dummy" },
    { 2, 0, GOSSIP_ICON_BATTLE, 3855, "Spell Power III" },
    { 2, 0, GOSSIP_ICON_BATTLE, 1894, "Icy Weapon" },
    { 2, 0, GOSSIP_ICON_BATTLE, 1103, "Agility" },
    { 2, 0, GOSSIP_ICON_BATTLE, 1898, "Lifestealing" },
    { 2, 0, GOSSIP_ICON_BATTLE, 3345, "Earthliving I" },
    { 2, 0, GOSSIP_ICON_BATTLE, 1743, "MHTest02" },
    { 2, 0, GOSSIP_ICON_BATTLE, 3093, "Attack Power vs Undead and Demons" },
    { 2, 0, GOSSIP_ICON_BATTLE, 1900, "Crusader" },
    { 2, 0, GOSSIP_ICON_BATTLE, 3846, "Spell Power II" },
    { 2, 0, GOSSIP_ICON_BATTLE, 1606, "Attack Power" },
    { 2, 0, GOSSIP_ICON_BATTLE, 283, "Windfury I" },
    { 2, 0, GOSSIP_ICON_BATTLE, 1, "Rockbiter III" },
    { 2, 3, GOSSIP_ICON_TALK, 0, "Next ->" },
    { 2, 1, GOSSIP_ICON_TALK, 0, "Back <-" },

    { 3, 0, GOSSIP_ICON_BATTLE, 3265, "Blessed Weapon Coating" },
    { 3, 0, GOSSIP_ICON_BATTLE, 2, "Frostbrand I" },
    { 3, 0, GOSSIP_ICON_BATTLE, 3, "Flametongue III" },
    { 3, 0, GOSSIP_ICON_BATTLE, 3266, "Righteous Weapon Coating" },
    { 3, 0, GOSSIP_ICON_BATTLE, 1903, "Spirit" },
    { 3, 0, GOSSIP_ICON_BATTLE, 13, "Sharpened" },
    { 3, 0, GOSSIP_ICON_BATTLE, 26, "Frost Oil" },
    { 3, 0, GOSSIP_ICON_BATTLE, 7, "Deadly Poison" },
    { 3, 0, GOSSIP_ICON_BATTLE, 803, "Fiery Weapon" },
    { 3, 0, GOSSIP_ICON_BATTLE, 1896, "Weapon Damage" },
    { 3, 0, GOSSIP_ICON_BATTLE, 2666, "Intellect" },
    { 3, 0, GOSSIP_ICON_BATTLE, 25, "Shadow Oil" },
    { 3, 2, GOSSIP_ICON_TALK, 0, "Back <-" },
};
class denveous_stuff : public ItemScript
{
public:
    denveous_stuff() : ItemScript("denveous_stuff") {}

    bool OnUse(Player* player, Item* item, SpellCastTargets const& /*targets*/)
    {
        player->PlayerTalkClass->SendCloseGossip();
        player->PlayerTalkClass->ClearMenus();
        AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|TInterface/PaperDoll/UI-PaperDoll-Slot-MainHand:32:32:-32:0|t Main-Hand", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|TInterface/PaperDoll/UI-PaperDoll-Slot-SecondaryHand:32:32:-32:0|t Off-Hand", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
        AddGossipItemFor(player, GOSSIP_ICON_INTERACT_1, "|TInterface/PaperDollInfoFrame/UI-GearManager-Undo:32:32:-32:0|t Nevermind", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
        SendGossipMenuFor(player, DEFAULT_MESSAGE, item->GetGUID());
        return true;
    }
    void OnGossipSelect(Player* player, Item* item, uint32 sender, uint32 action) override
    {
        player->PlayerTalkClass->ClearMenus();

        switch (action)
        {
        case GOSSIP_ACTION_INFO_DEF + 1:
            MainHand = true;
            GetMenu(player, item, 1);
            return;

        case GOSSIP_ACTION_INFO_DEF + 2:
            MainHand = false;
            GetMenu(player, item, 1);
            return;

        case GOSSIP_ACTION_INFO_DEF + 3:
            CloseGossipMenuFor(player);
            return;
        }

        uint32 menuData = vData2[action].Submenu;

        if (menuData == 0)
        {
            SetVisual(player, vData2[action].Id);
            menuData = vData2[action].Menu;
        }

        GetMenu(player, item, menuData);
        return;
        return OnGossipSelect(player, item, sender, action);
    }

    bool MainHand;

    void SetVisual(Player* player, uint32 visual)
    {
        uint8 slot = MainHand ? EQUIPMENT_SLOT_MAINHAND : EQUIPMENT_SLOT_OFFHAND;

        Item* item = player->GetItemByPos(INVENTORY_SLOT_BAG_0, slot);

        if (!item)
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Equip an item in that slot in order to change the look.");
            return;
        }

        const ItemTemplate* itemTemplate = item->GetTemplate();

        if (itemTemplate->SubClass == ITEM_SUBCLASS_ARMOR_SHIELD ||
            itemTemplate->SubClass == ITEM_SUBCLASS_ARMOR_BUCKLER ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_SPEAR ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_BOW ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_GUN ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_obsolete ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_EXOTIC ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_EXOTIC2 ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_MISC ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_THROWN ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_CROSSBOW ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_WAND ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_FISHING_POLE ||
            itemTemplate->SubClass == ITEM_SUBCLASS_WEAPON_obsolete)
            return;

        player->SetUInt16Value(PLAYER_VISIBLE_ITEM_1_ENCHANTMENT + (item->GetSlot() * 2), 0, visual);
    }

    void GetMenu(Player* player, Item* item, uint32 menuId)
    {
        for (uint8 i = 0; i < (sizeof(vData2) / sizeof(*vData2)); i++)
        {
            if (vData2[i].Menu == menuId)
                AddGossipItemFor(player, vData2[i].Icon, vData2[i].Name, GOSSIP_SENDER_MAIN, i);
        }

        SendGossipMenuFor(player, DEFAULT_MESSAGE, item->GetGUID());
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {

        return true;
    }
};

void AddSC_denveous_stuff()
{
    new denveous_stuff;
}

