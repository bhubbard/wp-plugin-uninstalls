-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advwl_btn_position', 'advwl_after_add_to_wishlist_behaviour_add', 'advwl_btn_text', 'advwl_btn_view_text', 'advwl_btn_remove_text', 'advwl_btn_already_in', 'advwl_pro_added_text', 'advwl_btn_archive', 'advwl_btn_archive_position', 'advwl_btn_style', 'advwl_btn_icon', 'advwl_wishlist_page', 'advwl_wishlist_name', 'advwl_remove_from_wishlist', 'advwl_redirect_to_cart', 'advwl_success_notice', 'advwl_show_prod_image', 'advwl_show_prod_title', 'advwl_show_prod_price', 'advwl_show_prod_stock', 'advwl_show_date_added', 'advwl_cart_style', 'advwl_cart_text', 'advwl_show_remove_icon', 'woocommerce_currency', 'advwl_plugin_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stock_status');

