-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('veesing_sms_expire', 'veesing_template_register', 'veesing_sms_debug', 'veesing_sms_logs', 'veesing_sms_account', 'veesing_sms_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_phone');

