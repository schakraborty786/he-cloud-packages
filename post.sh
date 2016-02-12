echo 'SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = '\''ih_prod'\'' AND pid <> pg_backend_pid();' | psql postgres

#echo 'drop database ih_prod;' | psql postgres

echo 'CREATE DATABASE  ih_prod;' | psql postgres
echo 'CREATE USER ih_prod       WITH PASSWORD 'root';'  | psql postgres
echo 'CREATE USER srv_dataapi   WITH PASSWORD 'root';'  | psql postgres
echo 'CREATE USER srv_frontend  WITH PASSWORD 'root';'  | psql postgres
echo 'CREATE USER srv_parser    WITH PASSWORD 'root';'  | psql postgres
echo 'CREATE USER srv_beworker  WITH PASSWORD 'root';'  | psql postgres
echo 'GRANT ALL PRIVILEGES ON DATABASE ih_prod to ih_prod;' | psql postgres
cd /tmp/;
psql ih_prod < ih_prod_20160202.sql


