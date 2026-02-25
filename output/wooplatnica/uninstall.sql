-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_uplatnica_settings', 'wooplatnica_uplatnica_settings');

