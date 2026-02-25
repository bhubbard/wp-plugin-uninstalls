#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_address_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_chat_plugin_enable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cookie_expire'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_error_flag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_connecting'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notification_position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pages_menu'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_radio_bool'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_re_address_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_recovery_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_security_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_map_root'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_root'"
wp option delete 'MOOWP_Activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moo_user_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moo_user_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moo_user_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moo_user_key'"
