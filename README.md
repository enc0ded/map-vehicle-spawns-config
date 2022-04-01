# Static-Vehicle-Spawner
Let's you spawn vehicles at predetermined locations and makes them persistent, respawning them in their last location after a server restart.

### Installation
Update config.lua to suit your server's needs. 

Add vehicle models you wish to load in randomly on your server (can be hashes or names). Add coordinates of locations where you want the vehicles to spawn.

If you are using txadmin, vehicles will be automatically saved to file before server restarts, otherwise set your restart times.

Remove any colours you do not want to apply to vehicles. 

### Commands
Manually save vehicles to file, and remove all from map.
```bash
svs-save
```
---
Manually load vehicles from file
```bash
svs-load
```
---
Toggle vehicle spawning on/off
```bash
svs-pause
```
---

Toggle server console logging on/off
```bash
svs-debug
```
---
