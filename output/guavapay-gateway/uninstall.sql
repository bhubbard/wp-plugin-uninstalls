-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_guavapay_settings', 'woocommerce_tax_display_cart', 'woocommerce_tax_total_display');

