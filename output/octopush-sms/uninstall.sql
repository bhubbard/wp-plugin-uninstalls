-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('octopush_sms_email', 'octopush_sms_key', 'octopush_sms_sender', 'octopush_sms_admin_alert', 'octopush_sms_admin_alert_sent', 'octopush_sms_freeoption', 'octopush_sms_option_id_product', 'octopush_sms_admin_phone');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login', 'billing_phone', 'billing_country', 'first_name', 'last_name', 'billing_last_name', 'billing_first_name', 'billing_firstname', 'billing_lastname');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login', 'billing_phone', 'billing_country', 'first_name', 'last_name', 'billing_last_name', 'billing_first_name', 'billing_firstname', 'billing_lastname');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login', 'billing_phone', 'billing_country', 'first_name', 'last_name', 'billing_last_name', 'billing_first_name', 'billing_firstname', 'billing_lastname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login', 'billing_phone', 'billing_country', 'first_name', 'last_name', 'billing_last_name', 'billing_first_name', 'billing_firstname', 'billing_lastname');

