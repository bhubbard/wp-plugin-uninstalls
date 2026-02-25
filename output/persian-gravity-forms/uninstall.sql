-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('persian_gf_notices', 'persian_gf_dismiss_notice_all', 'gf_sms_last_sender', 'admin_phone_prefix', 'wp_subscribes_send_sms', 'wp_subscribes_text_send');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'persian_gf_dismiss_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'persian_gf_notice_v%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gform-entry-id', 'phone_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gform-entry-id', 'phone_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gform-entry-id', 'phone_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gform-entry-id', 'phone_number');

