-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shipmondo_migration_version', 'shipmondo_settings', 'woocommerce_weight_unit');
DELETE FROM wp_options WHERE option_name LIKE 'Price_%';
DELETE FROM wp_options WHERE option_name LIKE 'Weight_%';

