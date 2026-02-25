#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ver'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_ver'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

