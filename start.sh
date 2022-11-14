#!/bin/bash

configfile=/7days/serverconfig.xml

[ -e $configfile ] && rm -- $configfile

echo "<?xml version=\"1.0\"?>" >> $configfile
echo "<ServerSettings>" >> $configfile
echo "    <!-- GENERAL SERVER SETTINGS -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Server representation -->" >> $configfile
echo "    <property name=\"ServerName\"                         value=\"${ServerName:-"MTS Gaming 7 Days"}\"/>        <!-- Whatever you want the name of the server to be. -->" >> $configfile
echo "    <property name=\"ServerDescription\"                  value=\"${ServerDescription:-"A 7 Days to Die server from the MTS Container"}\"/>    <!-- Whatever you want the server description to be, will be shown in the server browser. -->" >> $configfile
echo "    <property name=\"ServerWebsiteURL\"                   value=\"${ServerWebsiteURL:-""}\"/>                    <!-- Website URL for the server, will be shown in the serverbrowser as a clickable link -->" >> $configfile
echo "    <property name=\"ServerPassword\"                     value=\"${ServerPassword:-""}\"/>                    <!-- Password to gain entry to the server -->" >> $configfile
echo "    <property name=\"ServerLoginConfirmationText\"        value=\"${ServerLoginConfirmationText:-""}\" />                    <!-- If set the user will see the message during joining the server and has to confirm it before continuing. For more complex changes to this window you can change the \"serverjoinrulesdialog\" window in XUi -->" >> $configfile
echo "    <property name=\"Region\"                             value=\"${Region:-"Oceania"}\" />    <!-- The region this server is in. Values: NorthAmericaEast, NorthAmericaWest, CentralAmerica, SouthAmerica, Europe, Russia, Asia, MiddleEast, Africa, Oceania -->" >> $configfile
echo "    <property name=\"Language\"                           value=\"${Language:-"English"}\" />            <!-- Primary language for players on this server. Values: Use any language name that you would users expect to search for. Should be the English name of the language, e.g. not \"Deutsch\" but \"German\" -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Networking -->" >> $configfile
echo "    <property name=\"ServerPort\"                         value=\"${ServerPort:-"26900"}\"/>                <!-- Port you want the server to listen on. Keep it in the ranges 26900 to 26905 or 27015 to 27020 if you want PCs on the same LAN to find it as a LAN server. -->" >> $configfile
echo "    <property name=\"ServerVisibility\"                   value=\"${ServerVisibility:-"2"}\"/>                    <!-- Visibility of this server: 2 = public, 1 = only shown to friends, 0 = not listed. As you are never friend of a dedicated server setting this to \"1\" will only work when the first player connects manually by IP. -->" >> $configfile
echo "    <property name=\"ServerDisabledNetworkProtocols\"     value=\"${ServerDisabledNetworkProtocols:-"SteamNetworking"}\"/>    <!-- Networking protocols that should not be used. Separated by comma. Possible values: LiteNetLib, SteamNetworking. Dedicated servers should disable SteamNetworking if there is no NAT router in between your users and the server or when port-forwarding is set up correctly -->" >> $configfile
echo "    <property name=\"ServerMaxWorldTransferSpeedKiBs\"    value=\"${ServerMaxWorldTransferSpeedKiBs:-"512"}\"/>                <!-- Maximum (!) speed in kiB/s the world is transferred at to a client on first connect if it does not have the world yet. Maximum is about 1300 kiB/s, even if you set a higher value. -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Slots -->" >> $configfile
echo "    <property name=\"ServerMaxPlayerCount\"               value=\"${ServerMaxPlayerCount:-"12"}\"/>                    <!-- Maximum Concurrent Players -->" >> $configfile
echo "    <property name=\"ServerReservedSlots\"                value=\"${ServerReservedSlots:-"0"}\"/>                    <!-- Out of the MaxPlayerCount this many slots can only be used by players with a specific permission level -->" >> $configfile
echo "    <property name=\"ServerReservedSlotsPermission\"      value=\"${ServerReservedSlotsPermission:-"100"}\"/>                <!-- Required permission level to use reserved slots above -->" >> $configfile
echo "    <property name=\"ServerAdminSlots\"                   value=\"${ServerAdminSlots:-"0"}\"/>                    <!-- This many admins can still join even if the server has reached MaxPlayerCount -->" >> $configfile
echo "    <property name=\"ServerAdminSlotsPermission\"         value=\"${ServerAdminSlotsPermission:-"0"}\"/>                    <!-- Required permission level to use the admin slots above -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Admin interfaces -->" >> $configfile
echo "    <property name=\"ControlPanelEnabled\"                value=\"${ControlPanelEnabled:-"false"}\"/>                <!-- Enable/Disable the web control panel -->" >> $configfile
echo "    <property name=\"ControlPanelPort\"                   value=\"${ControlPanelPort:-"8080"}\"/>                <!-- Port of the control panel webpage -->" >> $configfile
echo "    <property name=\"ControlPanelPassword\"               value=\"${ControlPanelPassword:-"CHANGEME"}\"/>            <!-- Password to gain entry to the control panel -->" >> $configfile
echo "" >> $configfile
echo "    <property name=\"TelnetEnabled\"                      value=\"${TelnetEnabled:-"true"}\"/>                <!-- Enable/Disable the telnet -->" >> $configfile
echo "    <property name=\"TelnetPort\"                         value=\"${TelnetPort:-"8081"}\"/>                <!-- Port of the telnet server -->" >> $configfile
echo "    <property name=\"TelnetPassword\"                     value=\"${TelnetPassword:-""}\"/>                    <!-- Password to gain entry to telnet interface. If no password is set the server will only listen on the local loopback interface -->" >> $configfile
echo "    <property name=\"TelnetFailedLoginLimit\"             value=\"${TelnetFailedLoginLimit:-"10"}\"/>                <!-- After this many wrong passwords from a single remote client the client will be blocked from connecting to the Telnet interface -->" >> $configfile
echo "    <property name=\"TelnetFailedLoginsBlocktime\"        value=\"${TelnetFailedLoginsBlocktime:-"10"}\"/>                <!-- How long will the block persist (in seconds) -->" >> $configfile
echo "" >> $configfile
echo "    <property name=\"TerminalWindowEnabled\"              value=\"${TerminalWindowEnabled:-"true"}\"/>                <!-- Show a terminal window for log output / command input (Windows only) -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Folder and file locations -->" >> $configfile
echo "    <property name=\"AdminFileName\"                      value=\"${AdminFileName:-"serveradmin.xml"}\"/>    <!-- Server admin file name. Path relative to the SaveGameFolder -->" >> $configfile
echo "    <!-- <property name=\"UserDataFolder\"                value=\"absolute path\" /> -->    <!-- Use this to override where the server stores all generated data, including RWG generated worlds. Do not forget to uncomment the entry! -->" >> $configfile
echo "    <!-- <property name=\"SaveGameFolder\"                value=\"absolute path\" /> -->    <!-- Use this to only override the save game path. Do not forget to uncomment the entry! -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Other technical settings -->" >> $configfile
echo "    <property name=\"EACEnabled\"                         value=\"${EACEnabled:-"true"}\"/>                <!-- Enables/Disables EasyAntiCheat -->" >> $configfile
echo "    <property name=\"HideCommandExecutionLog\"            value=\"${HideCommandExecutionLog:-"0"}\"/>                    <!-- Hide logging of command execution. 0 = show everything, 1 = hide only from Telnet/ControlPanel, 2 = also hide from remote game clients, 3 = hide everything -->" >> $configfile
echo "    <property name=\"MaxUncoveredMapChunksPerPlayer\"     value=\"${MaxUncoveredMapChunksPerPlayer:-"131072"}\"/>            <!-- Override how many chunks can be uncovered on the ingame map by each player. Resulting max map file size limit per player is (x * 512 Bytes), uncovered area is (x * 256 m²). Default 131072 means max 32 km² can be uncovered at any time -->" >> $configfile
echo "    <property name=\"PersistentPlayerProfiles\"           value=\"${PersistentPlayerProfiles:-"false"}\" />            <!-- If disabled a player can join with any selected profile. If true they will join with the last profile they joined with -->" >> $configfile
echo "" >> $configfile
echo "" >> $configfile
echo "" >> $configfile
echo "    <!-- GAMEPLAY -->" >> $configfile
echo "" >> $configfile
echo "    <!-- World -->" >> $configfile
echo "    <property name=\"GameWorld\"                          value=\"${GameWorld:-"Navezgane"}\"/>            <!-- \"RWG\" (see WorldGenSeed and WorldGenSize options below) or any already existing world name in the Worlds folder (currently shipping with e.g. \"Navezgane\", \"PREGEN01\", ...) -->" >> $configfile
echo "    <property name=\"WorldGenSeed\"                       value=\"${WorldGenSeed:-"asdf"}\"/>                <!-- If RWG this is the seed for the generation of the new world. If a world with the resulting name already exists it will simply load it -->" >> $configfile
echo "    <property name=\"WorldGenSize\"                       value=\"${WorldGenSize:-"6144"}\"/>                <!-- If RWG this controls the width and height of the created world. It is also used in combination with WorldGenSeed to create the internal RWG seed thus also creating a unique map name even if using the same WorldGenSeed. Has to be a multiple of 2048 between 2048 and 16384, though large map sizes will take long to generate / download / load -->" >> $configfile
echo "    <property name=\"GameName\"                           value=\"${GameName:-"My Game"}\"/>            <!-- Whatever you want the game name to be. This affects the save game name as well as the seed used when placing decoration (trees etc) in the world. It does not control the generic layout of the world if creating an RWG world -->" >> $configfile
echo "    <property name=\"GameMode\"                           value=\"${GameMode:-"GameModeSurvival"}\"/>    <!-- GameModeSurvival -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Difficulty -->" >> $configfile
echo "    <property name=\"GameDifficulty\"                     value=\"${GameDifficulty:-"2"}\"/>                    <!-- 0 - 5, 0=easiest, 5=hardest -->" >> $configfile
echo "    <property name=\"BlockDamagePlayer\"                  value=\"${BlockDamagePlayer:-"100"}\" />                <!-- How much damage do players to blocks (percentage in whole numbers) -->" >> $configfile
echo "    <property name=\"BlockDamageAI\"                      value=\"${BlockDamageAI:-"100"}\" />                <!-- How much damage do AIs to blocks (percentage in whole numbers) -->" >> $configfile
echo "    <property name=\"BlockDamageAIBM\"                    value=\"${BlockDamageAIBM:-"100"}\" />                <!-- How much damage do AIs during blood moons to blocks (percentage in whole numbers) -->" >> $configfile
echo "    <property name=\"XPMultiplier\"                       value=\"${XPMultiplier:-"100"}\" />                <!-- XP gain multiplier (percentage in whole numbers) -->" >> $configfile
echo "    <property name=\"PlayerSafeZoneLevel\"                value=\"${PlayerSafeZoneLevel:-"5"}\" />                <!-- If a player is less or equal this level he will create a safe zone (no enemies) when spawned -->" >> $configfile
echo "    <property name=\"PlayerSafeZoneHours\"                value=\"${PlayerSafeZoneHours:-"5"}\" />                <!-- Hours in world time this safe zone exists -->" >> $configfile
echo "" >> $configfile
echo "    <!--  -->" >> $configfile
echo "    <property name=\"BuildCreate\"                        value=\"${BuildCreate:-"false"}\" />            <!-- cheat mode on/off -->" >> $configfile
echo "    <property name=\"DayNightLength\"                     value=\"${DayNightLength:-"60"}\" />                <!-- real time minutes per in game day: 60 minutes -->" >> $configfile
echo "    <property name=\"DayLightLength\"                     value=\"${DayLightLength:-"18"}\" />                <!-- in game hours the sun shines per day: 18 hours day light per in game day -->" >> $configfile
echo "    <property name=\"DropOnDeath\"                        value=\"${DropOnDeath:-"1"}\" />                <!-- 0 = nothing, 1 = everything, 2 = toolbelt only, 3 = backpack only, 4 = delete all -->" >> $configfile
echo "    <property name=\"DropOnQuit\"                         value=\"${DropOnQuit:-"0"}\" />                <!-- 0 = nothing, 1 = everything, 2 = toolbelt only, 3 = backpack only -->" >> $configfile
echo "    <property name=\"BedrollDeadZoneSize\"                value=\"${BedrollDeadZoneSize:-"15"}\" />                <!-- Size (box \"radius\", so a box with 2 times the given value for each side's length) of bedroll deadzone, no zombies will spawn inside this area, and any cleared sleeper volumes that touch a bedroll deadzone will not spawn after they've been cleared. -->" >> $configfile
echo "    <property name=\"BedrollExpiryTime\"                  value=\"${BedrollExpiryTime:-"45"}\" />                <!-- Number of real world days a bedroll stays active after owner was last online -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Performance related -->" >> $configfile
echo "    <property name=\"MaxSpawnedZombies\"                  value=\"${MaxSpawnedZombies:-"64"}\" />                <!-- This setting covers the entire map. There can only be this many zombies on the entire map at one time. Changing this setting has a huge impact on performance. -->" >> $configfile
echo "    <property name=\"MaxSpawnedAnimals\"                  value=\"${MaxSpawnedAnimals:-"50"}\" />                <!-- If your server has a large number of players you can increase this limit to add more wildlife. Animals don't consume as much CPU as zombies. NOTE: That this doesn't cause more animals to spawn arbitrarily: The biome spawning system only spawns a certain number of animals in a given area, but if you have lots of players that are all spread out then you may be hitting the limit and can increase it. -->" >> $configfile
echo "    <property name=\"ServerMaxAllowedViewDistance\"       value=\"${ServerMaxAllowedViewDistance:-"12"}\" />                <!-- Max viewdistance a client may request (6 - 12). High impact on memory usage and performance. -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Zombie settings -->" >> $configfile
echo "    <property name=\"EnemySpawnMode\"                     value=\"${EnemySpawnMode:-"true"}\" />                <!-- Enable/Disable enemy spawning -->" >> $configfile
echo "    <property name=\"EnemyDifficulty\"                    value=\"${EnemyDifficulty:-"0"}\" />                <!-- 0 = Normal, 1 = Feral -->" >> $configfile
echo "    <property name=\"ZombieFeralSense\"                   value=\"${ZombieFeralSense:-"0"}\" />                <!-- 0-3 (Off, Day, Night, All) -->" >> $configfile
echo "    <property name=\"ZombieMove\"                         value=\"${ZombieMove:-"0"}\" />                <!-- 0-4 (walk, jog, run, sprint, nightmare) -->" >> $configfile
echo "    <property name=\"ZombieMoveNight\"                    value=\"${ZombieMoveNight:-"3"}\" />                <!-- 0-4 (walk, jog, run, sprint, nightmare) -->" >> $configfile
echo "    <property name=\"ZombieFeralMove\"                    value=\"${ZombieFeralMove:-"3"}\" />                <!-- 0-4 (walk, jog, run, sprint, nightmare) -->" >> $configfile
echo "    <property name=\"ZombieBMMove\"                       value=\"${ZombieBMMove:-"3"}\" />                <!-- 0-4 (walk, jog, run, sprint, nightmare) -->" >> $configfile
echo "    <property name=\"BloodMoonFrequency\"                 value=\"${BloodMoonFrequency:-"7"}\" />                <!-- What frequency (in days) should a blood moon take place. Set to \"0\" for no blood moons -->" >> $configfile
echo "    <property name=\"BloodMoonRange\"                     value=\"${BloodMoonRange:-"0"}\" />                <!-- How many days can the actual blood moon day randomly deviate from the above setting. Setting this to 0 makes blood moons happen exactly each Nth day as specified in BloodMoonFrequency -->" >> $configfile
echo "    <property name=\"BloodMoonWarning\"                   value=\"${BloodMoonWarning:-"8"}\" />                <!-- The Hour number that the red day number begins on a blood moon day. Setting this to -1 makes the red never show.  -->" >> $configfile
echo "    <property name=\"BloodMoonEnemyCount\"                value=\"${BloodMoonEnemyCount:-"8"}\" />                <!-- This is the number of zombies that can be alive (spawned at the same time) at any time PER PLAYER during a blood moon horde, however, MaxSpawnedZombies overrides this number in multiplayer games. Also note that your game stage sets the max number of zombies PER PARTY. Low game stage values can result in lower number of zombies than the BloodMoonEnemyCount setting. Changing this setting has a huge impact on performance. -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Loot -->" >> $configfile
echo "    <property name=\"LootAbundance\"                      value=\"${LootAbundance:-"100"}\" />                <!-- percentage in whole numbers -->" >> $configfile
echo "    <property name=\"LootRespawnDays\"                    value=\"${LootRespawnDays:-"7"}\" />                <!-- days in whole numbers -->" >> $configfile
echo "    <property name=\"AirDropFrequency\"                   value=\"${AirDropFrequency:-"72"}\"/>                <!-- How often airdrop occur in game-hours, 0 == never -->" >> $configfile
echo "    <property name=\"AirDropMarker\"                      value=\"${AirDropMarker:-"false"}\"/>                <!-- Sets if a marker is added to map/compass for air drops. -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Multiplayer -->" >> $configfile
echo "    <property name=\"PartySharedKillRange\"               value=\"${PartySharedKillRange:-"100"}\"/>                <!-- The distance you must be within to receive party shared kill xp and quest party kill objective credit. -->" >> $configfile
echo "    <property name=\"PlayerKillingMode\"                  value=\"${PlayerKillingMode:-"3"}\" />                <!-- Player Killing Settings (0 = No Killing, 1 = Kill Allies Only, 2 = Kill Strangers Only, 3 = Kill Everyone) -->" >> $configfile
echo "" >> $configfile
echo "    <!-- Land claim options -->" >> $configfile
echo "    <property name=\"LandClaimCount\"                     value=\"${LandClaimCount:-"1"}\"/>                    <!-- Maximum allowed land claims per player. -->" >> $configfile
echo "    <property name=\"LandClaimSize\"                      value=\"${LandClaimSize:-"41"}\"/>                <!-- Size in blocks that is protected by a keystone -->" >> $configfile
echo "    <property name=\"LandClaimDeadZone\"                  value=\"${LandClaimDeadZone:-"30"}\"/>                <!-- Keystones must be this many blocks apart (unless you are friends with the other player) -->" >> $configfile
echo "    <property name=\"LandClaimExpiryTime\"                value=\"${LandClaimExpiryTime:-"7"}\"/>                    <!-- The number of real world days a player can be offline before their claims expire and are no longer protected -->" >> $configfile
echo "    <property name=\"LandClaimDecayMode\"                 value=\"${LandClaimDecayMode:-"0"}\"/>                    <!-- Controls how offline players land claims decay. 0=Slow (Linear) , 1=Fast (Exponential), 2=None (Full protection until claim is expired). -->" >> $configfile
echo "    <property name=\"LandClaimOnlineDurabilityModifier\"  value=\"${LandClaimOnlineDurabilityModifier:-"4"}\"/>                <!-- How much protected claim area block hardness is increased when a player is online. 0 means infinite (no damage will ever be taken). Default is 4x -->" >> $configfile
echo "    <property name=\"LandClaimOfflineDurabilityModifier\" value=\"${LandClaimOfflineDurabilityModifier:-"4"}\"/>                <!-- How much protected claim area block hardness is increased when a player is offline. 0 means infinite (no damage will ever be taken). Default is 4x -->" >> $configfile
echo "    <property name=\"LandClaimOfflineDelay\"              value=\"${LandClaimOfflineDelay:-"0"}\"/>                    <!-- The number of minutes after a player logs out that the land claim area hardness transitions from online to offline. Default is 0 -->" >> $configfile
echo "" >> $configfile
echo "" >> $configfile
echo "    <property name=\"DynamicMeshEnabled\"                 value=\"${DynamicMeshEnabled:-"true"}\"/>                <!-- Is Dynamic Mesh system enabled -->" >> $configfile
echo "    <property name=\"DynamicMeshLandClaimOnly\"           value=\"${DynamicMeshLandClaimOnly:-"true"}\"/>                <!-- Is Dynamic Mesh system only active in player LCB areas -->" >> $configfile
echo "    <property name=\"DynamicMeshLandClaimBuffer\"         value=\"${DynamicMeshLandClaimBuffer:-"3"}\"/>                    <!-- Dynamic Mesh LCB chunk radius -->" >> $configfile
echo "    <property name=\"DynamicMeshMaxItemCache\"            value=\"${DynamicMeshMaxItemCache:-"3"}\"/>                    <!-- How many items can be processed concurrently, higher values use more RAM -->" >> $configfile
echo "" >> $configfile
echo "    <property name=\"TwitchServerPermission\"             value=\"${TwitchServerPermission:-"90"}\"/>                <!-- Required permission level to use twitch integration on the server -->" >> $configfile
echo "    <property name=\"TwitchBloodMoonAllowed\"             value=\"${TwitchBloodMoonAllowed:-"false"}\"/>                <!-- If the server allows twitch actions during a blood moon. This could cause server lag with extra zombies being spawned during blood moon. -->" >> $configfile
echo "" >> $configfile
echo "    <!-- There are several game settings that you cannot change when starting a new game." >> $configfile
echo "    You can use console commands to change at least some of them ingame." >> $configfile
echo "    setgamepref BedrollDeadZoneSize 30 -->" >> $configfile
echo "</ServerSettings>" >> $configfile

./startserver.sh -configfile=$configfile