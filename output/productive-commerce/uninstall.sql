-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('productive_global_section_following_options', 'productive_global_section_grid_options', 'productive_global_section_misc_options', 'productive_global_section_popup_options', 'active_sitewide_plugins', 'productive_global_section_sharing_options', 'productive_global_section_slider_options', 'productive_commerce_section_integration_options', 'productive_commerce_section_compare_options', 'productive_commerce_section_minicart_options', 'productive_commerce_section_wishlist_options', 'woocommerce_cart_redirect_after_add', '_transient_productive_commerce', '_transient_timeout_productive_commerce', 'productive_commerce_section_quickview_options', 'productive_commerce_section_miniwishlist_options', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_tax_display_cart');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('productive_user_follow_site_1', 'productive_user_follow_site_2', 'productive_user_follow_site_3', 'productive_user_follow_site_4', 'productive_user_follow_site_5');
DELETE FROM wp_usermeta WHERE meta_key IN ('productive_user_follow_site_1', 'productive_user_follow_site_2', 'productive_user_follow_site_3', 'productive_user_follow_site_4', 'productive_user_follow_site_5');
DELETE FROM wp_termmeta WHERE meta_key IN ('productive_user_follow_site_1', 'productive_user_follow_site_2', 'productive_user_follow_site_3', 'productive_user_follow_site_4', 'productive_user_follow_site_5');
DELETE FROM wp_commentmeta WHERE meta_key IN ('productive_user_follow_site_1', 'productive_user_follow_site_2', 'productive_user_follow_site_3', 'productive_user_follow_site_4', 'productive_user_follow_site_5');

