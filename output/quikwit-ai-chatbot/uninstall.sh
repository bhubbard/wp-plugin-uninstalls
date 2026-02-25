#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%tokens'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%agents'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%chatbot_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%widget_data'"

# Delete Transients
wp transient delete 'quikwit_rest_api_status'

