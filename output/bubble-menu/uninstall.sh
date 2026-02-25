#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_capabilities'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wow_license_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"

