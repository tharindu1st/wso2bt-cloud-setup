FROM nuwanbando/javabase

RUN mkdir wso2 

COPY packs/wso2is-5.1.0.zip wso2/

RUN cd wso2/ && \
        unzip wso2is-5.1.0.zip
        
COPY identity/carbon/ /mnt/wso2/carbon-home/

COPY artifacts/mysql-connector-java-5.1.34-bin.jar /wso2/wso2is-5.1.0/repository/components/lib/
COPY identity/carbon/repository/conf/datasources/master-datasources.xml /wso2/wso2is-5.1.0/repository/conf/datasources/
COPY identity/carbon/repository/conf/carbon.xml /wso2/wso2is-5.1.0/repository/conf/
COPY identity/carbon/repository/conf/identity/identity.xml /wso2/wso2is-5.1.0/repository/conf/identity


CMD ["sh", "/wso2/wso2is-5.1.0/bin/wso2server.sh"]


#EXPOSE 9763
#EXPOSE 9443
#EXPOSE 7611
#EXPOSE 7711