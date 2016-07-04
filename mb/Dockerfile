FROM nuwanbando/javabase

RUN mkdir wso2 

COPY packs/wso2mb-3.1.0.zip wso2/

RUN cd wso2/ && \
        unzip wso2mb-3.1.0.zip
        
COPY mb/carbon/ /mnt/wso2/carbon-home/

COPY artifacts/mysql-connector-java-5.1.34-bin.jar /wso2/wso2mb-3.1.0/repository/components/lib/
COPY mb/carbon/repository/conf/datasources/master-datasources.xml /wso2/wso2mb-3.1.0/repository/conf/datasources/
COPY mb/carbon/repository/conf/user-mgt.xml /wso2/wso2mb-3.1.0/repository/conf/user-mgt.xml
COPY mb/carbon/repository/conf/security/authenticators.xml /wso2/wso2mb-3.1.0/repository/conf/security/authenticators.xml
COPY mb/carbon/repository/conf/carbon.xml /wso2/wso2mb-3.1.0/repository/conf/


CMD ["sh", "/wso2/wso2mb-3.1.0/bin/wso2server.sh"]


