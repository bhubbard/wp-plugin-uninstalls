-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('textme_sms_account', 'textme_sms_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_city', '_billing_email', '_billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_city', '_billing_email', '_billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_city', '_billing_email', '_billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_city', '_billing_email', '_billing_phone');

