-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hippoo_ticket');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_customer_user', '_billing_phone', '_billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_customer_user', '_billing_phone', '_billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_customer_user', '_billing_phone', '_billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_customer_user', '_billing_phone', '_billing_email');

