#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%right_click'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disable_keys'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%text_selection'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%image_text_dragging'"
wp option delete 'uncopy_settings_html_disabled_js_msg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'uncopy_settings_anti_adblocker_%'"
wp option delete 'uncopy_settings_anti_adblocker_urls'
wp option delete 'uncopy_settings_anti_adblocker_anti_adblocker_msg'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'uncopy_settings_backend_%'"
wp option delete 'uncopy_settings_general_backend'
wp option delete 'uncopy_settings_backend_backend_type'
wp option delete 'uncopy_settings_backend_backend_urls'

