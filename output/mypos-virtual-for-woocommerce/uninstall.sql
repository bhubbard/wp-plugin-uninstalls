-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_mypos_virtual_settings', 'mypos_schema_missing_tables', 'woocommerce_checkout_page_id', 'mypos_installing');
DELETE FROM wp_options WHERE option_name LIKE 'mypos_update_order_%';

