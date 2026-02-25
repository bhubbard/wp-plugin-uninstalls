-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsms_flash_message', 'wpsms_gateway_credit', 'woocommerce_ship_to_destination', 'wp_sms_db_version', 'wp_notification_new_wp_version', 'wp_last_credit', 'wp_sms_is_fresh', 'wp_sms_installation_time', 'wp_last_send_notification', 'wp_sms_mcc', 'wpsms_settings', 'wp_sms_plugin_version', 'wp_sms_dismissed_notices', 'wp_sms_notifications', 'wp_sms_import_file', 'woocommerce_custom_orders_table_enabled', 'update_core', 'wpsms_uwazii_token', 'wp_sms_flash_notices');
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_sms_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcf7_sms_form%';
DELETE FROM wp_options WHERE option_name LIKE '%_download_info';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpsms_notification_sent', 'wpsms_scheduled_send_to', 'wpsms_scheduled_message_template', 'wpsms_scheduled_receivers', 'mobile', '_billing_phone', '_customer_user', 'first_name', 'last_name', 'session_tokens', 'nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpsms_notification_sent', 'wpsms_scheduled_send_to', 'wpsms_scheduled_message_template', 'wpsms_scheduled_receivers', 'mobile', '_billing_phone', '_customer_user', 'first_name', 'last_name', 'session_tokens', 'nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpsms_notification_sent', 'wpsms_scheduled_send_to', 'wpsms_scheduled_message_template', 'wpsms_scheduled_receivers', 'mobile', '_billing_phone', '_customer_user', 'first_name', 'last_name', 'session_tokens', 'nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpsms_notification_sent', 'wpsms_scheduled_send_to', 'wpsms_scheduled_message_template', 'wpsms_scheduled_receivers', 'mobile', '_billing_phone', '_customer_user', 'first_name', 'last_name', 'session_tokens', 'nickname');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

