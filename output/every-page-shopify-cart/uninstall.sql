-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shopify_domain', 'shopify_access_token', 'cart_tab_button_color', 'cart_tab_button_hover_color', 'cart_tab_button_text_color');

