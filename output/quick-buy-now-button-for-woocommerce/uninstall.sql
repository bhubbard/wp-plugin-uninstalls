-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbnb_enable_product_types', 'wbnb_enable_button_single', 'wbnb_enable_button_archive', 'wbnb_redirect_location', 'wbnb_ajax_add_to_cart', 'wbnb_button_style', 'wbnb_button_color', 'wbnb_button_background', 'wbnb_button_border_color', 'wbnb_button_border_size', 'wbnb_button_border_radius', 'wbnb_button_font_size', 'wbnb_button_margin', 'wbnb_button_padding', 'wbnb_reset_cart', 'wbnb_button_position_single', 'wbnb_button_position_archive', 'wbnb_custom_redirect_url', 'wbnb_button_text', 'wbnb_default_qnt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_buy_now_button_disable', 'is_add_to_cart_hide', 'is_quantity_hide', 'default_qnt_number', 'buy_now_button_text', 'buy_now_redirect_location', 'buy_now_redirect_custom_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_buy_now_button_disable', 'is_add_to_cart_hide', 'is_quantity_hide', 'default_qnt_number', 'buy_now_button_text', 'buy_now_redirect_location', 'buy_now_redirect_custom_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_buy_now_button_disable', 'is_add_to_cart_hide', 'is_quantity_hide', 'default_qnt_number', 'buy_now_button_text', 'buy_now_redirect_location', 'buy_now_redirect_custom_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_buy_now_button_disable', 'is_add_to_cart_hide', 'is_quantity_hide', 'default_qnt_number', 'buy_now_button_text', 'buy_now_redirect_location', 'buy_now_redirect_custom_link');

