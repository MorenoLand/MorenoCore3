/*
 * This file is part of the TrinityCore Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

// This is where scripts' loading functions should be declared:
void AddLfgSoloScripts();
void AddSC_AutoBalance();
void AddSC_starting_guild();
void AddSC_world_chat();
void AddSC_Boss_Announcer();
void AddSC_denveous_stuff();
void AddSC_NPC_VisualWeapon();
void AddSC_NPC_denveousTesting();
//void AddSC_accontmounts();

// The name of this function should match:
// void Add${NameOfDirectory}Scripts()
void AddCustomScripts()
{
    AddLfgSoloScripts();
    // VAS AutoBalance
    AddSC_AutoBalance();
    //AddSC_accontmounts();
    AddSC_NPC_denveousTesting();
    AddSC_NPC_VisualWeapon();
    AddSC_denveous_stuff();
    AddSC_world_chat();
    AddSC_starting_guild();
    AddSC_Boss_Announcer();
}
