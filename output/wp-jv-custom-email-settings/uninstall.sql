-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_jv_ces_db_version', 'wp_jv_ces_set_email_from', 'wp_jv_ces_set_email_from_address', 'wp_jv_ces_set_notification_mode', 'wp_jv_ces_set_notification_about', 'wp_jv_ces_set_subject', 'wp_jv_ces_set_content', 'auto_notification_result', 'auto_notification_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_jv_ces_user_notification', 'wp_jv_ces_notification_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_jv_ces_user_notification', 'wp_jv_ces_notification_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_jv_ces_user_notification', 'wp_jv_ces_notification_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_jv_ces_user_notification', 'wp_jv_ces_notification_sent');

