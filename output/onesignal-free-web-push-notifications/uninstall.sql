-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onesignal_plugin_migrated', 'OneSignalWPSetting', 'onesignal.last_send_time', 'TimeLastUpdated', 'onesignal_transient_error', 'onesignal_transient_success');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('recipients', 'status', 'response_body', 'onesignal_meta_box_present', 'onesignal_send_notification', 'onesignal_modify_title_and_content', 'onesignal_notification_custom_heading', 'onesignal_notification_custom_content', 'os_notification_id', 'os_meta', 'os_previous_publish_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('recipients', 'status', 'response_body', 'onesignal_meta_box_present', 'onesignal_send_notification', 'onesignal_modify_title_and_content', 'onesignal_notification_custom_heading', 'onesignal_notification_custom_content', 'os_notification_id', 'os_meta', 'os_previous_publish_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('recipients', 'status', 'response_body', 'onesignal_meta_box_present', 'onesignal_send_notification', 'onesignal_modify_title_and_content', 'onesignal_notification_custom_heading', 'onesignal_notification_custom_content', 'os_notification_id', 'os_meta', 'os_previous_publish_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('recipients', 'status', 'response_body', 'onesignal_meta_box_present', 'onesignal_send_notification', 'onesignal_modify_title_and_content', 'onesignal_notification_custom_heading', 'onesignal_notification_custom_content', 'os_notification_id', 'os_meta', 'os_previous_publish_date');

