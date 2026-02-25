-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('listagram_token', 'listagram_enabled', 'listagram_enabled_woocommerce', 'listagram_enabled_woocommerce_cart');

