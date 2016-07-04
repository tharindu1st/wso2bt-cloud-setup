### API-M simple deployment with WSO2 DAS ###

Following instructions will help you to setup the deployment

1. Clone the repository to your local file system
2. Navigate to ``` packs/ ``` and copy ```IS,ESB,DAS,APIM```
3. navigate into the parent directory (wso2apim-with-das)
4. Execute ``` docker-compose up -d ```
5. Add following entries to /etc/hosts

e.g

* 75.124.74.161 bt.qsp.esb
* 75.124.74.161 bt.qsp.is
* 75.124.74.161 bt.qsp.apim
* 75.124.74.161 bt.qsp.das
* 75.124.74.161 bt.qsp.mb

SSO registration at IS
https://bt.qsp.esb:9444/carbon/admin/logout_action.jsp?logoutcomplete=true

IS port offset 0  9443
ESB port offset 1  9444
DAS port offset 2  9445
APIM port offset 3  9446
MB port offset 4  9447

This will setup 

* A mysql server (container) with apimdb / userdb / regdb
* API-Manager runs on its own in a container (store/publisher/km/gateway all in one JVM)
* A container with DAS and configured for API statistics

