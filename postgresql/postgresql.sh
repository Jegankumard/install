#!/bin/bash

sudo apt update
sudo apt install postgresql postgresql-contrib

sudo -i -u postgres
psql
exit
psql --version
