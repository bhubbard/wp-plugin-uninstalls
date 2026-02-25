-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kartly_title', 'kartly_icon', 'kartly_icon_color', 'title_bg', 'cart_items_bg', 'title_color', 'cart_close_color', 'cart_close_bg_color', 'cart_body_border_radius', 'cart_close_button_border_radius', 'item_delete_icon', 'item_delete_icon_color', 'item_delete_bg', 'items_title_color', 'items_quantity_color', 'items_price_color', 'items_total_price_color', 'items_area_border_radius', 'items_area_quantity_border_radius', 'items_delete_button_border_radius', 'shopping_button_color', 'shopping_button_bg_color', 'continue_shopping_button_border_radius', 'view_cart_button_color', 'view_cart_button_bg_color', 'view_cart_button_border_radius', 'checkout_button_color', 'checkout_button_bg_color', 'checkout_button_border_radius', 'wscart_last_upgraded_to', 'kartly_plugin_version');

