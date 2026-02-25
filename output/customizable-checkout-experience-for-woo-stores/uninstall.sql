-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccews_cfe_settings', 'ccews_cfe_billing_fields', 'ccews_cfe_shipping_fields', 'ccews_cfe_additional_fields');
DELETE FROM wp_options WHERE option_name LIKE '%_fields';

