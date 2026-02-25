-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'thswc_since', 'thswc_user_role', 'thswc_user_email', 'thswc_brand_logo', 'thswc_brand_color', 'woocommerce_ship_to_destination', 'woocommerce_enable_order_comments', 'woocommerce_tax_total_display', 'woocommerce_enable_shipping_calc', 'thswc_installing');
DELETE FROM wp_options WHERE option_name LIKE 'thswc_check_preview_%';
DELETE FROM wp_options WHERE option_name LIKE 'thswc_template_preview%';

