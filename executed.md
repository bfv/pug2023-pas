```
pasman create -v -p 10100 -P 10111 -s 10112 -N pas-pug2023 -m pug:pug -Z prod ./as

bin\tcman.bat deploy %DLC%\servers\pasoe\extras\manager.war
bin\tcman.bat deploy %DLC%\servers\pasoe\extras\oemanager.war

bin\tcman.bat feature HealthCheck=on
bin\tcman.bat config psc.as.health.enabled=true 

```