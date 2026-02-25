-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwa_data', 'lwa_admin_notices', 'lwa_pro_api_key', 'lwa_notification_override', 'lwa_version', 'lwa_transport_responses');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_registered', '_lwa_dismissed_notices', 'lwa', 'lwa_passkeys', 'lwa_passkey_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_registered', '_lwa_dismissed_notices', 'lwa', 'lwa_passkeys', 'lwa_passkey_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_registered', '_lwa_dismissed_notices', 'lwa', 'lwa_passkeys', 'lwa_passkey_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_registered', '_lwa_dismissed_notices', 'lwa', 'lwa_passkeys', 'lwa_passkey_id');

