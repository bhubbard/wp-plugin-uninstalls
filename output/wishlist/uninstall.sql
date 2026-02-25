-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wishlist_settings', 'pickplugins_wl_default_wishlist_id', 'pickplugins_wl_wishlist_page', 'pickplugins_wl_enable_wc_shop', 'pickplugins_wl_wc_shop_on', 'pickplugins_wl_enable_wc_product', 'pickplugins_wl_wc_product_under', 'pickplugins_wl_breadcrumb_enable', 'pickplugins_wl_breadcrumb_home_text', 'pickplugins_wl_breadcrumb_text_color', 'pickplugins_wl_list_per_page', 'pickplugins_wl_list_items_per_page', 'pickplugins_wl_button_font_size', 'pickplugins_wl_button_color_normal', 'pickplugins_wl_button_color_active', 'wishlist_heart_icon_html', 'wishlist_heart_loading_icon_html', 'pickplugins_wl_views_display', 'pickplugins_wl_vote_enable', 'pickplugins_wl_share_enable', 'pickplugins_wl_social_platforms', 'wishlist_plugin_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wishlist_status', 'wishlist_options', 'pickplugins_wl_votes', 'pickplugins_wl_views');
DELETE FROM wp_usermeta WHERE meta_key IN ('wishlist_status', 'wishlist_options', 'pickplugins_wl_votes', 'pickplugins_wl_views');
DELETE FROM wp_termmeta WHERE meta_key IN ('wishlist_status', 'wishlist_options', 'pickplugins_wl_votes', 'pickplugins_wl_views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wishlist_status', 'wishlist_options', 'pickplugins_wl_votes', 'pickplugins_wl_views');

