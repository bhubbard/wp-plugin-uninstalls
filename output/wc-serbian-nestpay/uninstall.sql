-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcnpg_version', 'wcnpg_schema_version', 'wcpng_schema_missing_tables', 'woocommerce_nestpay_settings', 'wcnpg_installing');

