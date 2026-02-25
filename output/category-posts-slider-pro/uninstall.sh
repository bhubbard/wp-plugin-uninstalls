#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpsp_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

