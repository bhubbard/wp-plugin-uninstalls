#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'displayembeddedvideosbydb_tb_name'
wp option delete 'displayembeddedvideosbydb_flag_recreation'
wp option delete 'displayembeddedvideosbydb_db_version'

