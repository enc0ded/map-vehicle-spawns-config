--[[
  _____             ___      _          _   __  __           _ 
 | ____|_ __   ___ / _ \  __| | ___  __| | |  \/  | ___   __| |___ 
 |  _| | '_ \ / __| | | |/ _` |/ _ \/ _` | | |\/| |/ _ \ / _` / __|
 | |___| | | | (__| |_| | (_| |  __/ (_| | | |  | | (_) | (_| \__ \
 |_____|_| |_|\___|\___/ \__,_|\___|\__,_| |_|  |_|\___/ \__,_|___/                                                    

    https://fivem-mods.tebex.io
    https://discord.gg/rhQhZWM

    static-serverside-vehicle-spawner | 1.0.0
]]

Config = {

    -- Enable/disable debugging messages to server console
    Debugging = true,

    -- Using txAdmin? | ServerRestartTimes are ignored if this is true and is handled by txadmin instead
    TxAdmin = false,

    -- Set your sevrer restart times. In the format of hours:minutes (24 hour clock). Note: 00:00 = 24:00
    ServerRestartTimes = {
        [1] = '24:00',
        [2] = '12:00',
    },

    -- GMT/UTC time offset | Remember to add 1 hour if your in daylight saving time of the year
    GMT = 1,

    -- Make vehicles peristent | If true, vehicles will respawn in their last location after before server restart
    RepopulateAfterReboot = true,

    -- Attempt to spawn vehicle every x of minutes
    SpawnInterval = 10,

    -- Number of vehicles to spawn at every SpawnInterval
    SpawnAmount = 3,

    -- Spawn vehicles 'locked', 'unlocked' or 'random'. NOTE: If you have another script that controls vehicle locking, comment out or delete this paramater
    SpawnLocked = 'random',
  
    -- Maximum number of vehicles to spawn - this should not exeed total number of spawn locations
    MaxVehicles = 25,

    -- should we include the number of population vehicle in the max vehicles count?
    IncludePopulationVehicles = false,

    -- Stop population vehicles from spawning
    DisablePopulationSpawning = false,

    -- Delete destroyed vehicles after x minutes | Set to 0 to never delete destroyed vehicles
    DeleteDestroyedVehicles = 5,

    -- Vehicle license plate config
    VehiclePlates = {

        -- Enable/disable unique license plates | if false will use GTA's default license plates | Max 8 digits including space
        Enabled = true,
        Letters = 3,
        Numbers = 4,
        AddSpace = true
    },

    -- Add spawn locations | Add as many as you like
    Coords = {
        -- Legion Square test coordinates
        {x = 243.0, y = -858.0, z = 30.0, h = 67.0},
        {x = 232.0, y = -854.0, z = 33.0, h = 68.0},
        {x = 218.0, y = -849.0, z = 33.0, h = 70.0},
    },

    -- Add vehicle models, names or hashes are acceptable. Add as many as you like | https://gtahash.ru/car/
    Car = {
        'bison',
        'blista',
    },

    -- not every color works with every vehicle. If color is not available, default color will be used. Remove colors you don't want to spawn.
    AvailableVehicleColours = {
        ["Black"] = 0,
        ["Carbon Black"] = 147,
        ["Graphite"] = 1,
        ["Anhracite Black"] = 11,
        ["Black Steel"] = 2,
        ["Dark Steel"] = 3,
        ["Silver"] = 4,
        ["Bluish Silver"] = 5,
        ["Rolled Steel"] = 6,
        ["Shadow Silver"] = 7,
        ["Stone Silver"] = 8,
        ["Midnight Silver"] = 9,
        ["Cast Iron Silver"] = 10,
        ["Red"] = 27,
        ["Torino Red"] = 28,
        ["Formula Red"] = 29,
        ["Lava Red"] = 150,
        ["Blaze Red"] = 30,
        ["Grace Red"] = 31,
        ["Garnet Red"] = 32,
        ["Sunset Red"] = 33,
        ["Cabernet Red"] = 34,
        ["Wine Red"] = 143,
        ["Candy Red"] = 35,
        ["Hot Pink"] = 135,
        ["Pfsiter Pink"] = 137,
        ["Salmon Pink"] = 136,
        ["Sunrise Orange"] = 36,
        ["Orange"] = 38,
        ["Bright Orange"] = 138,
        ["Gold"] = 99,
        ["Bronze"] = 90,
        ["Yellow"] = 88,
        ["Race Yellow"] = 89,
        ["Dew Yellow"] = 91,
        ["Dark Green"] = 49,
        ["Racing Green"] = 50,
        ["Sea Green"] = 51,
        ["Olive Green"] = 52,
        ["Bright Green"] = 53,
        ["Gasoline Green"] = 54,
        ["Lime Green"] = 92,
        ["Midnight Blue"] = 141,
        ["Galaxy Blue"] = 61,
        ["Dark Blue"] = 62,
        ["Saxon Blue"] = 63,
        ["Blue"] = 64,
        ["Mariner Blue"] = 65,
        ["Harbor Blue"] = 66,
        ["Diamond Blue"] = 67,
        ["Surf Blue"] = 68,
        ["Nautical Blue"] = 69,
        ["Racing Blue"] = 73,
        ["Ultra Blue"] = 70,
        ["Light Blue"] = 74,
        ["Chocolate Brown"] = 96,
        ["Bison Brown"] = 101,
        ["Creeen Brown"] = 95,
        ["Feltzer Brown"] = 94,
        ["Maple Brown"] = 97,
        ["Beechwood Brown"] = 103,
        ["Sienna Brown"] = 104,
        ["Saddle Brown"] = 98,
        ["Moss Brown"] = 100,
        ["Woodbeech Brown"] = 102,
        ["Straw Brown"] = 99,
        ["Sandy Brown"] = 105,
        ["Bleached Brown"] = 106,
        ["Schafter Purple"] = 71,
        ["Spinnaker Purple"] = 72,
        ["Midnight Purple"] = 142,
        ["Bright Purple"] = 145,
        ["Cream"] = 107,
        ["Ice White"] = 111,
        ["Frost White"] = 112,
        -- matte colours 
        ["Matte Black"] = 12,
        ["Gray"] = 13,
        ["Light Gray"] = 14,
        ["Matte Ice White"] = 131,
        ["Matte Blue"] = 83,
        ["Matte Dark Blue"] = 82,
        ["Matte Midnight Blue"] = 84,
        ["Matte Midnight Purple"] = 149,
        ["Matte Schafter Purple"] = 148,
        ["Matte Red"] = 39,
        ["Dark Red"] = 40,
        ["Matte Orange"] = 41,
        ["Matte Yellow"] = 42,
        ["Matte Lime Green"] = 55,
        ["Green"] = 128,
        ["Forest Green"] = 151,
        ["Foliage Green"] = 155,
        ["Olive Darb"] = 152,
        ["Dark Earth"] = 153,
        ["Desert Tan"] = 154,
        -- metals 
        ["Chrome"] = 120,
        ["Brushed Steel"] = 117,
        ["Brushed Black Steel"] = 118,
        ["Brushed Aluminum"] = 119,
        ["Pure Gold"] = 158,
        ["Brushed Gold"] = 159
    },
}