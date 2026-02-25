#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'name_directory_general_option'
wp option delete 'name_directory_db_version'

