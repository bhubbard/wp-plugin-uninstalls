-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_cargo_tracking_default_cargo_company', '_cargo_tracking_email_enabled', '_cargo_tracking_sms_message', '_cargo_tracking_sms_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cargo_tracking_number', '_cargo_company_info', '_billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cargo_tracking_number', '_cargo_company_info', '_billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cargo_tracking_number', '_cargo_company_info', '_billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cargo_tracking_number', '_cargo_company_info', '_billing_phone');

