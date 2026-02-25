#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wow_license_key_%'"
wp option delete 'wow_license_key_fmp'
wp option delete 'wow_license_status_fmp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wow_license_status_%'"

