-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wooaddtocart_settings_button_bg_color', '_wooaddtocart_settings_button_text_color', '_wooaddtocart_settings_button_border_color', '_wooaddtocart_settings_button_hover_color', '_wooaddtocart_settings_button_border_size', '_wooaddtocart_settings_button_radius_size', '_wooaddtocart_settings_button_font_size', '_wooaddtocart_settings_button_type', 'wooaddtocart_settings_button_padding_top', 'wooaddtocart_settings_button_padding_bottom', 'wooaddtocart_settings_button_padding_right', 'wooaddtocart_settings_button_padding_left', '_wooaddtocart_settings_button_icon', '_wooaddtocart_settings_button_icon_position', '_wooaddtocart_settings_button_hide');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wooaddtocart_product_hide_cart_button', '_wooaddtocart_product_cart_button_text', '_wooaddtocart_product_hide_price', 'atcbc-notice-dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wooaddtocart_product_hide_cart_button', '_wooaddtocart_product_cart_button_text', '_wooaddtocart_product_hide_price', 'atcbc-notice-dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wooaddtocart_product_hide_cart_button', '_wooaddtocart_product_cart_button_text', '_wooaddtocart_product_hide_price', 'atcbc-notice-dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wooaddtocart_product_hide_cart_button', '_wooaddtocart_product_cart_button_text', '_wooaddtocart_product_hide_price', 'atcbc-notice-dismissed');

