-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpwc_fields_to_show', 'tpwc_window_pop_up_background', 'tpwc_display_share_buttons', 'tpwc_remove_product_type', 'tpwc_add_to_cart_background', 'tpwc_add_to_cart_color', 'tpwc_add_to_cart_padding', 'tpwc_add_to_cart_border_radius', 'tpwc_strart_color', 'tpwc_limit_products_to_compare', 'tpwc_open_compare_button_type', 'tpwc_share_fields_to_show', 'tpwc_display_titles', 'tpwc_open_compare_button_color', 'tpwc_open_compare_button_background', 'tpwc_open_compare_button_padding', 'tpwc_product_compare_button_color', 'tpwc_product_compare_button_background', 'tpwc_product_compare_button_padding', 'tp_woocommerce_compare_page_id', 'tpwc_view_box_background', 'tpwc_highlight_cheapest_price');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

