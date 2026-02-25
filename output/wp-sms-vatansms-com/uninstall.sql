-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsms_gateway_credit', 'wpsms_hide_newsletter', 'wpsms_show_welcome_page', 'wpsms_first_show_welcome_page', 'wp_sms_db_version', 'wp_notification_new_wp_version', 'wp_last_credit', 'wp_last_send_notification', 'wpsms_settings', 'update_core');
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_sms_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_sms_form%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mobile');
DELETE FROM wp_usermeta WHERE meta_key IN ('mobile');
DELETE FROM wp_termmeta WHERE meta_key IN ('mobile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mobile');

