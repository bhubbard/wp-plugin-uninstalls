#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_jv_ces_db_version'
wp option delete 'wp_jv_ces_set_email_from'
wp option delete 'wp_jv_ces_set_email_from_address'
wp option delete 'wp_jv_ces_set_notification_mode'
wp option delete 'wp_jv_ces_set_notification_about'
wp option delete 'wp_jv_ces_set_subject'
wp option delete 'wp_jv_ces_set_content'

# Delete Transients
wp transient delete 'auto_notification_result'
wp transient delete 'auto_notification_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jv_ces_user_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jv_ces_user_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jv_ces_user_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jv_ces_user_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jv_ces_notification_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jv_ces_notification_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jv_ces_notification_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jv_ces_notification_sent'"
