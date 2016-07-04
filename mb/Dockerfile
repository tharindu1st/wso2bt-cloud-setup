FROM nuwanbando/javabase

RUN mkdir wso2 

COPY packs/wso2mb-3.1.0.zip wso2/

RUN cd wso2/ && \
        unzip wso2mb-3.1.0.zip
        
#COPY mb/carbon/ /mnt/wso2/carbon-home/

COPY artifacts/mysql-connector-java-5.1.34-bin.jar /wso2/wso2mb-3.1.0/repository/components/lib/
COPY mb/carbon/ /wso2/wso2mb-3.1.0/


CMD ["sh", "/wso2/wso2mb-3.1.0/bin/wso2server.sh"]


