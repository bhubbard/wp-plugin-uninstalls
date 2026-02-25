-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwcc_settings', 'cwcc_settings_cart', 'woocommerce_tax_total_display');

