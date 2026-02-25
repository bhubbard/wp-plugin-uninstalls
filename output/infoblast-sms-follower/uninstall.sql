-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sms_user', 'sms_password', 'sms_signature', 'sms_header', 'sms_footer', 'sms_max', 'sms_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sms_send_sms', 'sms_sent', 'sms_profile_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('sms_send_sms', 'sms_sent', 'sms_profile_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('sms_send_sms', 'sms_sent', 'sms_profile_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sms_send_sms', 'sms_sent', 'sms_profile_number');

