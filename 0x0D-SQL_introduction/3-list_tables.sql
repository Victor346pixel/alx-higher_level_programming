-- script that lists all the tables of a database in your MySQL server.
DATABASE=$1
mysql -e "USE $DATABASE; SHOW TABLES;"