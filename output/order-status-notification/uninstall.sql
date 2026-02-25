-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('osn_twilio_sid', 'osn_twilio_token', 'osn_plivo_auth', 'osn_plivo_token', 'osn_plivo_number', 'osn_twilio_number', 'active_sitewide_plugins', 'osn_admin_notification_status', 'osn_customer_notification_status', 'osn_admin_notification_text', 'osn_service', 'osn_admin_phone', 'osn_customer_notification_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_phone');

