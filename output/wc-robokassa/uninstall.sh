#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_robokassa_last_settings_update_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wc_robokassa_log_file_name'

