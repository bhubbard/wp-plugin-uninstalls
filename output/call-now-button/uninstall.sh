#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cnb'
wp option delete 'cnb_email_activation_wp_nonce'
wp option delete 'cnb_cloud_migration_done'
wp option delete 'cnb_css_location'
wp option delete 'cnb_js_location'
wp option delete 'cnb_user_root'
wp option delete 'cnb_static_root'
wp option delete 'cnb_chat_root'
wp option delete 'cnb_storage_type'

# Delete Transients
wp transient delete 'cnb_activation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%total_buttons' OR option_name LIKE '_site_transient_%total_buttons'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%active_buttons' OR option_name LIKE '_site_transient_%active_buttons'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%total_actions' OR option_name LIKE '_site_transient_%total_actions'"
wp transient delete 'cnb-options'

