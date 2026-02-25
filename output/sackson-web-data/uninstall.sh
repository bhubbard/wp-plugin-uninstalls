#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sacksonweb_premium_settings_option_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sacksonweb_collected_data-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sacksonweb_last_log-%'"

