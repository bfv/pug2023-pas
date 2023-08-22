```
pasman create -v -p 10100 -P 10111 -s 10112 -N pas-pug2023 -m pug:pug -Z prod ./as

bin\tcman.bat deploy %DLC%\servers\pasoe\extras\manager.war
bin\tcman.bat deploy %DLC%\servers\pasoe\extras\oemanager.war

bin\tcman.bat feature HealthCheck=on
bin\tcman.bat config psc.as.health.enabled=true 

bin\oeprop.bat AppServer.Agent.pas-pug2023.PROPATH="./../../bin,${DLC}/tty,${DLC}/tty/netlib/OpenEdge.Net.pl"

bin\oeprop.bat pas-pug2023.ROOT.WEB.adapterEnabled=1
bin\oeprop.bat +pas-pug2023.ROOT.WEB.handler1=PugWebHandler:/pug
bin\oeprop.bat AppServer.SessMgr.agentStartupParam="-pf ./../config/as.pf"

```