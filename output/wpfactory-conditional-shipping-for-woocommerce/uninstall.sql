-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wpjup_wc_cond_shipping_plugin_enabled', 'wpjup_wc_cond_shipping_add_variations', 'wpjup_wc_cond_shipping_validate_all', 'wpjup_wc_cond_shipping_cart_not_package', 'wpjup_wc_cond_shipping_debug', 'alg_wc_cond_shipping_logical_operator', 'woocommerce_default_gateway', 'wpjup_wc_cond_shipping_checkout_notice', 'wpjup_wc_cond_shipping_version');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

