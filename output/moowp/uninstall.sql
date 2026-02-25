-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MOOWP_Activated');
DELETE FROM wp_options WHERE option_name LIKE '%_address_url';
DELETE FROM wp_options WHERE option_name LIKE '%_chat_plugin_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_cookie_expire';
DELETE FROM wp_options WHERE option_name LIKE '%_error_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_is_connecting';
DELETE FROM wp_options WHERE option_name LIKE '%_notification_position';
DELETE FROM wp_options WHERE option_name LIKE '%_pages_menu';
DELETE FROM wp_options WHERE option_name LIKE '%_radio_bool';
DELETE FROM wp_options WHERE option_name LIKE '%_re_address_url';
DELETE FROM wp_options WHERE option_name LIKE '%_recovery_key';
DELETE FROM wp_options WHERE option_name LIKE '%_security_key';
DELETE FROM wp_options WHERE option_name LIKE '%_user_map_root';
DELETE FROM wp_options WHERE option_name LIKE '%_user_root';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('moo_user_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('moo_user_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('moo_user_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('moo_user_key');

