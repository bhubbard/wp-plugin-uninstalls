-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpp_settings', 'inspiry_properties_module_display');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('txn_id', 'payment_status', 'payment_gross', 'payment_date', 'mc_currency', 'payer_email', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('txn_id', 'payment_status', 'payment_gross', 'payment_date', 'mc_currency', 'payer_email', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('txn_id', 'payment_status', 'payment_gross', 'payment_date', 'mc_currency', 'payer_email', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('txn_id', 'payment_status', 'payment_gross', 'payment_date', 'mc_currency', 'payer_email', 'first_name', 'last_name');

