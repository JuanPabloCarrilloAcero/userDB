# Use the official PostgreSQL image as the base image
FROM postgres:latest

# Environment variables for database name, user, and password
ENV POSTGRES_DB=users_ms_db
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password

# Copy the initialization SQL script to the docker-entrypoint-initdb.d directory
COPY init.sql /docker-entrypoint-initdb.d/
