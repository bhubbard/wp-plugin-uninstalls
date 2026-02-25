-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_mollie_general_settings', 'edd_mollie_settings', 'edd_settings', 'edd_mollie_chargeback_notices', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mollie_customer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mollie_customer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mollie_customer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mollie_customer_id');

