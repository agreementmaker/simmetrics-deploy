#!/usr/bin/env bash

if [ ! -e simmetrics_jar_v1_6_2_d07_02_07.jar ]; then
  wget https://downloads.sourceforge.net/project/simmetrics/simmetrics_jar/simmetrics_v1_6_2/simmetrics_jar_v1_6_2_d07_02_07.jar
fi

mvn deploy:deploy-file \
  -Durl=scpexe://onawh.im/maven \
  -DrepositoryId=ssh-repository \
  -Dfile=simmetrics_jar_v1_6_2_d07_02_07.jar \
  -DgroupId=com.github.agreementmaker \
  -DartifactId=simmetrics \
  -Dversion=1.6.2 \
  -Dpackaging=jar \
  -DgeneratePom=true \
  -DgeneratePom.description="A similarity metric library - https://sourceforge.net/projects/simmetrics"
