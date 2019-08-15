# README

For running using Docker containers, use the image ubuntu:16.04 with postgreSQL instalation.

For running the DB use the command docker run --rm -p 5432:5432 --name pg_test eg_postgresql.

Remember to db:migrate before running the server.
