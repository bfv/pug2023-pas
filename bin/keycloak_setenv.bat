REM Move this to ${catalina_base}/bin !!!

set TRUSTSTORE=-Djavax.net.ssl.trustStore=c:/dev/pug2023/4gl/as/conf/jwtkeys/keycloak.jks
set TRUSTSTORE_PASSWORD=-Djavax.net.ssl.trustStorePassword=changeit
set JAVA_OPTS=%JAVA_OPTS% %TRUSTSTORE% %TRUSTSTORE_PASSWORD%


