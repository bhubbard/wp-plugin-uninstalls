-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgcsms_default_sendername', 'sgcsms_default_routing', 'sgcsms_username', 'sgcsms_password', 'sgcsms_apiname', 'sgcsms_otp_settings_option_name');
DELETE FROM wp_options WHERE option_name LIKE 'sgcsmsotpattempts_%';
DELETE FROM wp_options WHERE option_name LIKE 'sgcsmsotp_validated_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sgcsms_user_mobile_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('sgcsms_user_mobile_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('sgcsms_user_mobile_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sgcsms_user_mobile_number');

