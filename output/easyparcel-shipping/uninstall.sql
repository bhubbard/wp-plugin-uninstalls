-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'woocommerce_email_from_address', 'woocommerce_default_country', '_easyparcel_migrated_v2', 'easyparcel_auto_fulfillment_settings', 'woocommerce_easyparcel_settings', 'woocommerce_dimension_unit', 'woocommerce_weight_unit');

