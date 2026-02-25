-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmwoo_enable_gift_message', 'gmwoo_character_limit', 'gmwoo_field_label', 'gmwoo_field_placeholder', 'gmwoo_gift_message_mode', 'gmwoo_specific_products', 'gmwoo_specific_categories', 'woocommerce_cart_redirect_after_add');

