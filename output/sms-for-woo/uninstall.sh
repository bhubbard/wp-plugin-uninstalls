#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sfw_db_version'
wp option delete 'sms_for_woo_apitoken'
wp option delete 'sms_for_woo_connection_user'
wp option delete 'sms_for_woo_connection_password'
wp option delete 'sms_for_woo_from'
wp option delete 'sms_for_woo_username'
wp option delete 'sms_for_woo_password'
wp option delete 'sms_for_woo_temp'
wp option delete 'sms_for_woo_settings_all'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sms_for_woo_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sms_for_woo_optout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sms_for_woo_optout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sms_for_woo_optout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sms_for_woo_optout'"
