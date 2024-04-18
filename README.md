## Java project with integration of Database

Goal: The purpose of this project is to test java application connectivity with AWS RDS(MySQL)

### Database Info 
- `Database Name : jwt`
- `src/main/webapp/login.jsp`
- `src/main/webapp/userRegistration.jsp`

#### Steps for creating Schema

`CREATE TABLE `USER` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;`


### Steps for building/running this project

Be in the project directory
- `mvn package`
- `Copy the artifact i.e war file from target directory to Application Server Webapps directory`


--------------------------------------------------------------------------
# Manual deployment

## Apache Tomcat

- Apache Tomcat is a free and open-source implementation of the Jakarta Servlet, Jakarta Expression Language, and WebSocket technologies. Tomcat provides a "pure Java" HTTP web server environment in which Java code can run. By default, Apache Tomcat runs on port 8080.

## Apache Tomcat Installation

### Launch an instance in Public Subnet with Amazon Linux 2 OS tag as App Server

- Like we installed Apache Web Server to deploy the website, we need to install Apache Tomcat to go with dynamic applications.
- Tomcat requires Java to function.
  
#### Install Java
```bash
java
sudo yum -y install java-1.8*
```
### Download Tomcat Binary
```
wget https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.94/bin/apache-tomcat-7.0.94.tar.gz
tar xvf apache-tomcat-7.0.94.tar.gz

```
### Starting tomcat server
```
# Tomcat runs on port 8080
sudo netstat -ntpl | grep 8080

~/apache-tomcat-7.0.94/bin/startup.sh 
# Hit enter

sudo netstat -ntpl | grep 8080

```
### Browse the tomcat server
- Browse by public-ip:8080, you will be able to see the Tomcat page.

### Also apply a custom tcp rule
- Apply a custom TCP rule with port 8080 from anywhere in security group, as Tomcat works on port 8080 by default.

## Application Setup
**Fetch application code**
```
# Install Git
sudo yum -y install git

# Fetch code
git clone -b aws https://github.com/DL-Murali/car-insurance-app.git

```
- According to this application, we need a database “jwt” and table called “USER”. Browse: http://App-Server-Public-IP:8080/LoginWebApp.

## RDS Database Changes
### Install mysql client to communicate with RDS
```
mysql
sudo yum -y install mysql
mysql -h <rds-end-point> -u root -p
```
### Update Database & Tables according to application code
```
# login to database server and create
Database - jwt
create database jwt;

# create table USER
show databases;
use jwt;
show tables;

CREATE TABLE `USER` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;	   

show tables;
select * from USER;
```
### Modify the Database address in userRegistration.jsp & login.jsp
```
cd aws-rds-java
vi src/main/webapp/userRegistration.jsp
vi src/main/webapp/login.jsp
# Change database address
```
### Build the application
- Building - Conversion of source code to binary code. In order to build, we need a build tool, which is “MAVEN”.
```
mvn
sudo yum -y install maven
cd ~/aws-rds-java
ls target
mvn package
ls target
```
### Deploy the application
- Copy the war file generated in target directory to Apache Tomcat webapps directory.
```
cp /home/ec2-user/aws-rds-java/target/LoginWebApp.war /home/ec2-user/apache-tomcat-7.0.94/webapps
```
**Browse: http://App-Server-Public-IP:8080/LoginWebApp**

