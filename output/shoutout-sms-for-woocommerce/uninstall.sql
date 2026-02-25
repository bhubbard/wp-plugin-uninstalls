-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shoutout_sms_woo_default_sms_template', 'shoutout_sms_woo_auth_token', 'shoutout_sms_woo_from_number', 'shoutout_sms_woo_enable_admin_sms', 'shoutout_sms_woo_admin_sms_template', 'shoutout_sms_woo_admin_sms_recipients');
DELETE FROM wp_options WHERE option_name LIKE 'shoutout_sms_woo_send_sms_%';
DELETE FROM wp_options WHERE option_name LIKE '%_sms_template';

