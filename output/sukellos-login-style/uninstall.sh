#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_logo'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_logo_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_logo_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_main_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_button_text_color'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Delete Transients
wp transient delete 'update_plugins'

