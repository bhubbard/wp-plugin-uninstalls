#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_visibility'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cookie'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_close_button'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_use_default'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_android_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ios_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_css'"

