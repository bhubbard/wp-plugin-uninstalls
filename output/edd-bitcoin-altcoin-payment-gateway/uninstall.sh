#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_settings'
wp option delete 'ebapg_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cart'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ct'"

