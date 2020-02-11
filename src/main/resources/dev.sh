#!/bin/bash

# 打包项目
cd $PROJ_PATH/jenkins-test
mvn clean install

# 删除原有工程
rm -rf $TOMCAT_APP_PATH/webapps/jenkins-test.war
rm -rf $TOMCAT_APP_PATH/webapps/jenkins-test

# 复制新的工程
cp $PROJ_PATH/jenkins-test/target/jenkins-test.war $TOMCAT_APP_PATH/webapps/

cd $TOMCAT_APP_PATH/webapps/
