# mySQLfiles
Studied SQL files 
Jinhan Han
This file is my personal study and schoolstudy for MYSQL and database
San Jose State University, Computational Mathematics major
I used docker and sql workbench

docker pull ibmcom/db2
 
docker run -itd --name mydb2 --privileged=true -p 50000:50000 -e LICENSE=accept -e DB2INST1_PASSWORD=kenward -e DBNAME=testdb -v luw:/database ibmcom/db2
 
docker exec -ti mydb2 bash -c "su - db2inst1"
 
db2 "connect to sample"
 

Db docker ID search ex :
The directory for sql file

jinhans-mbp:cs157aedited jinhanhan$ docker ps
CONTAINER ID   IMAGE          COMMAND                  CREATED       STATUS          PORTS                                                          NAMES
d2fc2ee05335   52d2032897e3   "/var/db2_setup/lib/…"   2 weeks ago   Up 25 minutes   22/tcp, 55000/tcp, 60006-60007/tcp, 0.0.0.0:50000->50000/tcp   mydb2


Pwd. is command to find path way directory

[db2inst1@d2fc2ee05335 ~]$ pwd
/database/config/db2inst1

[db2inst1@d2fc2ee05335 ~]$ ls
hw3_sample.sql  set_rec_values.sh  sqllib


Copied sql file go into docker imaginary window
Docker cp ./hw3_sample.sql 

Ex:
(base) jinhans-mbp:cs157aedited jinhanhan$ docker cp ./create.sql d2fc2ee05335:./database/config/db2inst1/157a

EX: 
docker cp ./hw3_sample.sql d2fc2ee05335:./database/config/db2inst1


[db2inst1@d2fc2ee05335 ~]$ db2 CREATE DB cs157a

[db2inst1@d2fc2ee05335 ~]$ db2 connect to cs157a

Apply sql file into db2
[db2inst1@d2fc2ee05335 ~]$ db2 -td"^" -f hw3_sample.sql 


db2 -tvf test.sql 

Databse list
db2 list db directory

Db tables
list tables

