# Start with the official Postgres image as the base
FROM postgres:13

# Set the environment variables
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres

# Copy the initialization script (SQL file) to the Docker image
COPY ./init.sql /docker-entrypoint-initdb.d/init.sql

# Expose the Postgres port
EXPOSE 5432
