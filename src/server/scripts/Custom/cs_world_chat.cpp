/*

* import to database - auth - allow to player use cmd

REPLACE INTO `rbac_linked_permissions` (`id`, `linkedId`) VALUES (195, 525);

* import to database - world - Passive report chat block to gms

REPLACE INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (17000, 'Player |cff00ff00%s|r Chat Blocked : |cffff0000%s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

*/
#include "RBAC.h"
#include "Config.h"
#include "WorldSession.h"
#include "Player.h"
#include "Chat.h"
#include "World.h"
#include "DatabaseEnv.h"
#define Playedtimetochat 1
#define mutetimecensor 1
#define mutetimeantispam 0

#define FACTION_SPECIFIC 0
using namespace std;
const char* CLASS_ICON;
const char* RACE_ICON;

std::string GetNameLink(Player* player)
{
    std::string name = player->GetName();
    std::string color;
    std::string icon;
    switch (player->GetRace())
    {
        case RACE_BLOODELF:
            if (player->GetGender() == GENDER_MALE)
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Bloodelf_Male:15|t"; else
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Bloodelf_Female:15|t";
        break;
        case RACE_DRAENEI:
            if (player->GetGender() == GENDER_FEMALE)
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Draenei_Female:15|t"; else
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Draenei_Male:15|t";
        break;
        case RACE_DWARF:
            if (player->GetGender() == GENDER_FEMALE)
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Dwarf_Female:15|t"; else
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Dwarf_Male:15|t";
        break;
        case RACE_GNOME:
            if (player->GetGender() == GENDER_FEMALE)
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Gnome_Female:15|t"; else
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Gnome_Male:15|t";
        break;
        case RACE_HUMAN:
            if (player->GetGender() == GENDER_FEMALE)
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Human_Female:15|t"; else
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Human_Male:15|t";
        break;
        case RACE_NIGHTELF:
            if (player->GetGender() == GENDER_FEMALE)
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Nightelf_Female:15|t"; else
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Nightelf_Male:15|t";
        break;
        case RACE_ORC:
            if (player->GetGender() == GENDER_FEMALE)
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Orc_Female:15|t"; else
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Orc_Male:15|t";
        break;
        case RACE_TAUREN:
            if (player->GetGender() == GENDER_FEMALE)
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Tauren_Female:15|t"; else
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Tauren_Male:15|t";
        break;
        case RACE_TROLL:
            if (player->GetGender() == GENDER_FEMALE)
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Troll_Female:15|t"; else
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Troll_Male:15|t";
        break;
        case RACE_UNDEAD_PLAYER:
            if (player->GetGender() == GENDER_FEMALE)
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Undead_Female:15|t"; else
                RACE_ICON = "|TInterface/ICONS/Achievement_Character_Undead_Male:15|t";
        break;
    }

    switch (player->GetClass())
    {
        case CLASS_DEATH_KNIGHT: color = "|cffC41F3B"; break;
        case CLASS_DRUID: color = "|cffFF7D0A"; break;        
        case CLASS_HUNTER: color = "|cffABD473"; break;
        case CLASS_MAGE: color = "|cff69CCF0"; break;
        case CLASS_PALADIN: color = "|cffF58CBA"; break;
        case CLASS_PRIEST: color = "|cffFFFFFF"; break;
        case CLASS_ROGUE: color = "|cffFFF569"; break;
        case CLASS_SHAMAN: color = "|cff0070DE"; break;
        case CLASS_WARLOCK: color = "|cff9482C9"; break;
        case CLASS_WARRIOR: color = "|cffC79C6E"; break;
    }
    return "|Hplayer:" + name + "|h|cffFFFFFF[" + color + name + "|r|h|cffFFFFFF] [|r" + RACE_ICON + "|h|cffFFFFFF]|r" ;
}

void _SendWorldChat(Player* player, string message)
{
    size_t stringpos;
    uint8 cheksSize = 1;
    std::string checks[1];
    checks[0] = "unixmad";

    for (int i = 0; i < cheksSize; ++i)
    {
        if (message.find(checks[i]) != string::npos)
        {
            std::string say = "";
            std::string str = "";
            say = message;
            sWorld->SendGMText(17000, player->GetName().c_str(), say.c_str());
            say = "";
            ChatHandler(player->GetSession()).PSendSysMessage("That word is not allowed on the server.");
            LoginDatabasePreparedStatement* mt = LoginDatabase.GetPreparedStatement(LOGIN_UPD_MUTE_TIME);
            int64 muteTime = time(NULL) + mutetimecensor; 
            player->GetSession()->m_muteTime = muteTime;
            mt->setInt64(0, muteTime);
            return;
        }
    }

    string msg;
    ostringstream chat_string;
    if (player->GetTotalPlayedTime() <= Playedtimetochat) 
    {
        std::string adStr = secsToTimeString(Playedtimetochat - player->GetTotalPlayedTime());
        player->GetSession()->SendNotification("You must wait until you've played %s seconds to use world chat!", adStr.c_str());
        return;
    }
    switch (player->GetSession()->GetSecurity())
    {
        case SEC_MODERATOR:
        case SEC_PLAYER:
        case SEC_GAMEMASTER:
        case SEC_ADMINISTRATOR:
        case SEC_CONSOLE:
            if (player->GetTeam() == ALLIANCE)
            {
                msg += "|h|cffFFFFFF[|r|cffC67171World|r|h|cffFFFFFF]|r ";
                msg += GetNameLink(player);
                msg += "|r: ";
            }

            else
            {
                msg += "|h|cffFFFFFF[|r|cffC67171World|r|h|cffFFFFFF]|r ";
                msg += GetNameLink(player);
                msg += "|r: ";
            }
    }
    chat_string << msg << " " << message << " |r";
    char c_msg[1024];
    snprintf(c_msg, 1024, chat_string.str().c_str());
    if (FACTION_SPECIFIC)
    {
        SessionMap sessions = sWorld->GetAllSessions();
        for (SessionMap::iterator itr = sessions.begin(); itr != sessions.end(); ++itr)
            if (Player* plr = itr->second->GetPlayer())
                if (plr->GetTeam() == player->GetTeam())
                    sWorld->SendServerMessage(SERVER_MSG_STRING, msg.c_str(), plr);
    }
    else
        sWorld->SendGlobalText(c_msg, NULL);
}

class cs_world_chat : public CommandScript
{
public:
    cs_world_chat() : CommandScript("cs_world_chat") {}

    static bool HandleWorldChatCommand(ChatHandler* handler, const char* args)
    {
        if (!*args)
            return false;

        Player* player = handler->GetSession()->GetPlayer();
        _SendWorldChat(handler->GetSession()->GetPlayer(), args);
        LoginDatabasePreparedStatement* mt = LoginDatabase.GetPreparedStatement(LOGIN_UPD_MUTE_TIME);
        int64 muteTime = time(NULL) + mutetimeantispam;
        player->GetSession()->m_muteTime = muteTime;
        mt->setInt64(0, muteTime);
        return true;
    }
    std::vector<ChatCommand> GetCommands() const override
    {
        static std::vector<ChatCommand> cs_world_chat =
        {
            {"chat", rbac::RBAC_PERM_COMMAND_SAVE, true, &HandleWorldChatCommand, "" },
            {"c", rbac::RBAC_PERM_COMMAND_SAVE, true, &HandleWorldChatCommand, "" },
            {"world", rbac::RBAC_PERM_COMMAND_SAVE, true, &HandleWorldChatCommand, "" },
        };
        return cs_world_chat;
    }
};
void AddSC_world_chat()
{
    new cs_world_chat;
}
