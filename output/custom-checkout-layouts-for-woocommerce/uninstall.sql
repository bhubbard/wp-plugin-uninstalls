-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_order_comments', 'cclw_general_settings', 'woocommerce_ship_to_destination', 'woocommerce_tax_total_display', 'cclw_advance_settings', 'cclw_checkout_fields', 'cclw_pro_version', 'cclw_do_activation_redirect', 'woocommerce_cart_block_enabled', 'woocommerce_checkout_block_enabled');

