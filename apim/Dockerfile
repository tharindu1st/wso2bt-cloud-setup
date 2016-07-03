FROM nuwanbando/javabase

RUN mkdir wso2 

COPY packs/wso2am-1.10.0.zip wso2/

RUN cd wso2/ && \
        unzip wso2am-1.10.0.zip

COPY artifacts/mysql-connector-java-5.1.34-bin.jar /wso2/wso2am-1.10.0/repository/components/lib/
COPY apim/carbon/repository/conf/api-manager.xml /wso2/wso2am-1.10.0/repository/conf/
COPY apim/carbon/repository/conf/datasources/master-datasources.xml /wso2/wso2am-1.10.0/repository/conf/datasources/
COPY apim/carbon/repository/conf/registry.xml /wso2/wso2am-1.10.0/repository/conf/
COPY apim/carbon/repository/conf/user-mgt.xml /wso2/wso2am-1.10.0/repository/conf/
COPY apim/carbon/repository/conf/axis2/axis2.xml /wso2/wso2am-1.10.0/repository/conf/axis2/
COPY apim/carbon/repository/conf/carbon.xml /wso2/wso2am-1.10.0/repository/conf/

COPY apim/_AuthorizeAPI_.xml /wso2/wso2am-1.10.0/repository/deployment/server/synapse-configs/default/api/
COPY apim/_TokenAPI_.xml /wso2/wso2am-1.10.0/repository/deployment/server/synapse-configs/default/api/
COPY apim/_RevokeAPI_.xml /wso2/wso2am-1.10.0/repository/deployment/server/synapse-configs/default/api/
COPY apim/_UserInfoAPI_.xml /wso2/wso2am-1.10.0/repository/deployment/server/synapse-configs/default/api/

CMD ["sh", "/wso2/wso2am-1.10.0/bin/wso2server.sh"]

EXPOSE 9763
EXPOSE 9443
EXPOSE 8280
EXPOSE 8243
EXPOSE 10397