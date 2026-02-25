-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_redirect_after_add', 'woocsa_cart_apply', 'woocsa_cart_type_after_redirect', 'woocsa_single_position', 'woocsa_cart_custom_link', 'woocommerce_shop_page_id', 'woocsa_single_condition');
DELETE FROM wp_options WHERE option_name LIKE '%_apply';
DELETE FROM wp_options WHERE option_name LIKE '%_type_always';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_link';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_text';

