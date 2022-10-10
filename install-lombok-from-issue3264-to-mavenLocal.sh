#!/usr/bin/env bash

cd "${0%/*}"

wget -N 'https://github.com/projectlombok/lombok/files/9745621/lombok-jdk19-20221010.zip'

unzip lombok-jdk19-20221010.zip

version=jdk19-20221010

mkdir -p ~/.m2/repository/org/projectlombok/lombok/$version/
mv lombok-$version.jar ~/.m2/repository/org/projectlombok/lombok/$version/

file=~/.m2/repository/org/projectlombok/lombok/$version/lombok-$version.pom

cat > $file <<EOF
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>org.projectlombok</groupId>
	<artifactId>lombok</artifactId>
	<packaging>jar</packaging>
	<version>$version</version>
	<dependencies></dependencies>
</project>
EOF
