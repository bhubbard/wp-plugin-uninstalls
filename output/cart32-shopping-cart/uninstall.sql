-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cart32wp_client_code', 'cart32wp_cart32_url', 'cart32wp_c32web_url', 'cart32wp_account_info', 'cart32wp_access_code', 'cart32_wp_add_view_cart_to_menu', 'cart32wp_view_cart_text', 'last_cart32_update', 'last_cart32_call');

