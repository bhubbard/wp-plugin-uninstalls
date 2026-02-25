-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'eav_slot_duration', 'eav_smtp_host', 'eav_smtp_username', 'eav_smtp_password', 'eav_smtp_port', 'eav_smtp_email', 'eav_slot_price', 'eav_slot_start', 'eav_slot_end', 'eav_paypal_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eav_user_email', 'eav_user_paypal_sign', 'eav_user_paypal_username', 'eav_user_paypal_paswd');
DELETE FROM wp_usermeta WHERE meta_key IN ('eav_user_email', 'eav_user_paypal_sign', 'eav_user_paypal_username', 'eav_user_paypal_paswd');
DELETE FROM wp_termmeta WHERE meta_key IN ('eav_user_email', 'eav_user_paypal_sign', 'eav_user_paypal_username', 'eav_user_paypal_paswd');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eav_user_email', 'eav_user_paypal_sign', 'eav_user_paypal_username', 'eav_user_paypal_paswd');

