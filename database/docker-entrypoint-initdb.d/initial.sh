#!/bin/bash
set -e

cd /script
sh create_db.sh
sh create_ext.sh
sh initia.sh
