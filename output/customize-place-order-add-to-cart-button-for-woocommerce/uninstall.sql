-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpoatcbfw_place_order_text', 'cpoatcbfw_add_to_cart_text');

