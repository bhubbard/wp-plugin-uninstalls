-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yith_wcwl_disable_wishlist_for_unauthenticated_users', 'yith-wcwl-welcome-modal', 'yith_wcwl_wishlist_page_id', 'yith_wcwl_product_added_text', 'yith_wcwl_remove_after_add_to_cart', 'yith_wcwl_button_position', 'yith_wcwl_show_on_loop', 'yith_wcwl_loop_position', 'yith_wcwl_redirect_cart', 'yith_wcwl_ajax_enable', 'yith_wcwl_add_to_cart_style', 'yith_wcwl_add_to_cart_icon', 'yith_wcwl_add_to_cart_custom_icon', 'yith_wcwl_add_to_cart_text', 'yith_wcwl_quantity_show', 'yith_wfbt_enable_integration', 'yith_wcwl_custom_css', 'yith_wcwl_version', 'yith_wcwl_wishlist_title', 'yith_wcwl_price_show', 'yith_wcwl_stock_show', 'yith_wcwl_show_dateadded', 'yith_wcwl_add_to_cart_show', 'yith_wcwl_show_remove', 'yith_wcwl_variation_show', 'yith_wcwl_repeat_remove_button', 'woocommerce_tax_display_cart', 'yith_wcwl_add_to_wishlist_icon', 'yith_wcwl_add_to_wishlist_custom_icon', 'yith_wcwl_enable_share', 'yith_wcwl_share_fb', 'yith_wcwl_share_twitter', 'yith_wcwl_share_pinterest', 'yith_wcwl_share_email', 'yith_wcwl_share_whatsapp', 'yith_wcwl_share_url', 'yith_wcwl_socials_title', 'yith_wcwl_socials_text', 'yith_wcwl_socials_image_url', 'yith_wcwl_already_in_wishlist_text', 'rewrite_rules', 'yith_wcwl_use_button', 'yith_wcwl_frontend_css', 'yith_wcwl_add_to_wishlist_style', 'yith_wcwl_ask_an_estimate_style', 'yith_wcwl_rounded_corners', 'yith_wcwl_rounded_corners_radius', 'yith_wcwl_add_to_cart_rounded_corners_radius', 'yith_wcwl_ask_an_estimate_rounded_corners_radius', 'yith_wcwl_rendering_method');
DELETE FROM wp_options WHERE option_name IN ('yith_wcwl_add_to_wishlist_icon_type', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'yith_wcwl_db_version', 'yith-wcwl-pageid', 'yith_wcwl_hidden_products', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version', 'yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_button_icon';
DELETE FROM wp_options WHERE option_name LIKE '%_button_custom_icon';
DELETE FROM wp_options WHERE option_name LIKE '%_type';
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', 'blog-cats');

