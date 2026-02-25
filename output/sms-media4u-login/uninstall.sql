-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sms_media4u_authentication_key', 'sms_media4u_username', 'sms_media4u_password');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('use_sms_media4u', 'tel');
DELETE FROM wp_usermeta WHERE meta_key IN ('use_sms_media4u', 'tel');
DELETE FROM wp_termmeta WHERE meta_key IN ('use_sms_media4u', 'tel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('use_sms_media4u', 'tel');

