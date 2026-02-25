#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsms_gateway_credit'
wp option delete 'wpsms_hide_newsletter'
wp option delete 'wpsms_show_welcome_page'
wp option delete 'wpsms_first_show_welcome_page'
wp option delete 'wp_sms_db_version'
wp option delete 'wp_notification_new_wp_version'
wp option delete 'wp_last_credit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_sms_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_sms_form%'"
wp option delete 'wp_last_send_notification'
wp option delete 'wpsms_settings'

# Delete Transients
wp transient delete 'update_core'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile'"
