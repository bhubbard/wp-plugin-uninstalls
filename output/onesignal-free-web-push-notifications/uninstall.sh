#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onesignal_plugin_migrated'
wp option delete 'OneSignalWPSetting'
wp option delete 'onesignal.last_send_time'
wp option delete 'TimeLastUpdated'

# Delete Transients
wp transient delete 'onesignal_transient_error'
wp transient delete 'onesignal_transient_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'response_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'response_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'response_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'response_body'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onesignal_meta_box_present'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onesignal_meta_box_present'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onesignal_meta_box_present'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onesignal_meta_box_present'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onesignal_send_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onesignal_send_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onesignal_send_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onesignal_send_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onesignal_modify_title_and_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onesignal_modify_title_and_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onesignal_modify_title_and_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onesignal_modify_title_and_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onesignal_notification_custom_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onesignal_notification_custom_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onesignal_notification_custom_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onesignal_notification_custom_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'onesignal_notification_custom_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'onesignal_notification_custom_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'onesignal_notification_custom_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'onesignal_notification_custom_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'os_notification_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'os_notification_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'os_notification_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'os_notification_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'os_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'os_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'os_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'os_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'os_previous_publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'os_previous_publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'os_previous_publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'os_previous_publish_date'"
