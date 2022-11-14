FROM ghcr.io/mts-gaming/docker-steamcmd-base

LABEL org.opencontainers.image.authors="info@mts-gaming.net" \
      description="7Days2Die Dedicated Server" \
      version="v1.0.0" 

RUN ["/steamcmd/steamcmd.sh", \
    "+force_install_dir", "/7days", \
    "+login", "anonymous", \
    "+app_update", "294420", "validate", \
    "+quit"]

WORKDIR /7days

COPY start.sh /7days/start.sh

CMD ./start.sh

EXPOSE 26900/tcp \
       26900/udp \
       26901/udp \
       26902/udp \
       26903/udp \
       8080/tcp \
       8081/tcp

VOLUME [ "/7days/server" ]

ENV ServerName="MTS Gaming 7 Days" \
    ServerDescription="A 7 Days to Die server from the MTS Container" \
    ServerWebsiteURL="" \
    ServerPassword="" \
    ServerLoginConfirmationText="" \
    Region="Oceania" \
    Language="English" \
    ServerPort="26900" \
    ServerVisibility="2" \
    ServerDisabledNetworkProtocols="SteamNetworking" \
    ServerMaxWorldTransferSpeedKiBs="512" \
    ServerMaxPlayerCount="12" \
    ServerReservedSlots="0" \
    ServerReservedSlotsPermission="100" \
    ServerAdminSlots="0" \
    ServerAdminSlotsPermission="0" \
    ControlPanelEnabled="false" \
    ControlPanelPort="8080" \
    ControlPanelPassword="CHANGEME" \
    TelnetEnabled="true" \
    TelnetPort="8081" \
    TelnetPassword="" \
    TelnetFailedLoginLimit="10" \
    TelnetFailedLoginsBlocktime="10" \
    TerminalWindowEnabled="true" \
    AdminFileName="serveradmin.xml" \
    EACEnabled="true" \
    HideCommandExecutionLog="0" \
    MaxUncoveredMapChunksPerPlayer="131072" \
    PersistentPlayerProfiles="false" \
    GameWorld="Navezgane" \
    WorldGenSeed="asdf" \
    WorldGenSize="6144" \
    GameName="My Game" \
    GameMode="GameModeSurvival" \
    GameDifficulty="2" \
    BlockDamagePlayer="100"  \
    BlockDamageAI="100"  \
    BlockDamageAIBM="100"  \
    XPMultiplier="100"  \
    PlayerSafeZoneLevel="5"  \
    PlayerSafeZoneHours="5"  \
    BuildCreate="false"  \
    DayNightLength="60"  \
    DayLightLength="18"  \
    DropOnDeath="1"  \
    DropOnQuit="0"  \
    BedrollDeadZoneSize="15"  \
    BedrollExpiryTime="45"  \
    MaxSpawnedZombies="64"  \
    MaxSpawnedAnimals="50"  \
    ServerMaxAllowedViewDistance="12"  \
    EnemySpawnMode="true"  \
    EnemyDifficulty="0"  \
    ZombieFeralSense="0"  \
    ZombieMove="0"  \
    ZombieMoveNight="3"  \
    ZombieFeralMove="3"  \
    ZombieBMMove="3"  \
    BloodMoonFrequency="7"  \
    BloodMoonRange="0"  \
    BloodMoonWarning="8"  \
    BloodMoonEnemyCount="8"  \
    LootAbundance="100"  \
    LootRespawnDays="7"  \
    AirDropFrequency="72" \
    AirDropMarker="false" \
    PartySharedKillRange="100" \
    PlayerKillingMode="3"  \
    LandClaimCount="1" \
    LandClaimSize="41" \
    LandClaimDeadZone="30" \
    LandClaimExpiryTime="7" \
    LandClaimDecayMode="0" \
    LandClaimOnlineDurabilityModifier="4" \
    LandClaimOfflineDurabilityModifier="4" \
    LandClaimOfflineDelay="0" \
    DynamicMeshEnabled="true" \
    DynamicMeshLandClaimOnly="true" \
    DynamicMeshLandClaimBuffer="3" \
    DynamicMeshMaxItemCache="3" \
    TwitchServerPermission="90" \
    TwitchBloodMoonAllowed="false" \
    TZ="Australia/Melbourne"