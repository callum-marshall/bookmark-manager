#Bookmark-Manager


# Bookmark Manager

An exemplar of the Bookmark Manager application, with sensible commits.

Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command \c bookmark_manager;
Run the query we have saved in the file 01_create_bookmarks_table.sql

DATABASE BASICS

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

To set up a test database, let's run psql and create a database, and use the SQL query saved in db/migrations/01_create_bookmarks_table.sql to create a bookmarks table.
