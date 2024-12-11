#!/bin/bash
set -ex

apt update
apt install -y maven

curl https://oss.jfrog.org/artifactory/oss-release-local/org/jfrog/buildinfo/build-info-extractor/2.14.0/build-info-extractor-2.14.0.jar\
    -o /tmp/build-info-extractor-2.14.0.jar
mvn install:install-file -Dfile=/tmp/build-info-extractor-2.14.0.jar -DgroupId=org.jfrog.buildinfo -DartifactId=build-info-extractor -Dversion=2.14.0 -Dpackaging=jar -Dhttps.protocols=TLSv1.2
