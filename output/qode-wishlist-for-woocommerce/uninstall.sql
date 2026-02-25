-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qode_wishlist_for_woocommerce_framework_permalinks', 'qode_wishlist_for_woocommerce_framework_permalinks_updated');
DELETE FROM wp_options WHERE option_name LIKE '%_count';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qode_wishlist_for_woocommerce_user_wishlist_items');
DELETE FROM wp_usermeta WHERE meta_key IN ('qode_wishlist_for_woocommerce_user_wishlist_items');
DELETE FROM wp_termmeta WHERE meta_key IN ('qode_wishlist_for_woocommerce_user_wishlist_items');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qode_wishlist_for_woocommerce_user_wishlist_items');

