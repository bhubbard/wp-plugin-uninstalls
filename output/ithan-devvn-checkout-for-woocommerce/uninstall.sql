-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ithandech_woo_theme_options', 'active_sitewide_plugins', 'woocommerce_enable_shipping_calc', 'woocommerce_ship_to_destination', 'woocommerce_enable_order_comments', 'woocommerce_tax_total_display');

