-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tesw_general_settings_fields', 'tesw_add_to_wishlist_options_fields', 'tesw_wishlist_page_options_fields', 'tesw_social_networks_settings_fields', 'tesw_style_options', 'woocommerce_myaccount_page_id', 'tesw_pro_version_settings_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tesw_smart_wishlist_meta', 'tesw_wishlist_date_added');
DELETE FROM wp_usermeta WHERE meta_key IN ('tesw_smart_wishlist_meta', 'tesw_wishlist_date_added');
DELETE FROM wp_termmeta WHERE meta_key IN ('tesw_smart_wishlist_meta', 'tesw_wishlist_date_added');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tesw_smart_wishlist_meta', 'tesw_wishlist_date_added');

