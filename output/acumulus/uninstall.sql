-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acumulus', 'acumulus_version', 'woocommerce_shipping_tax_class');

