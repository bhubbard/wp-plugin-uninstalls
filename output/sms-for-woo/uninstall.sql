-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfw_db_version', 'sms_for_woo_apitoken', 'sms_for_woo_connection_user', 'sms_for_woo_connection_password', 'sms_for_woo_from', 'sms_for_woo_username', 'sms_for_woo_password', 'sms_for_woo_temp', 'sms_for_woo_settings_all');
DELETE FROM wp_options WHERE option_name LIKE 'sms_for_woo_status_%';
DELETE FROM wp_options WHERE option_name LIKE '%_message';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sms_for_woo_optout');
DELETE FROM wp_usermeta WHERE meta_key IN ('sms_for_woo_optout');
DELETE FROM wp_termmeta WHERE meta_key IN ('sms_for_woo_optout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sms_for_woo_optout');

