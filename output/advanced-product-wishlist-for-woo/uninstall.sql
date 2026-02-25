-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apww_notice_dismiss', 'apww_license', 'apww_license_active', 'apsw_license_active', 'apsw_license_notices_web', 'woocommerce_myaccount_page_id');
DELETE FROM wp_options WHERE option_name LIKE 'appw_wishlist_achive_product_list_%';
DELETE FROM wp_options WHERE option_name LIKE '__apww_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('appw_wishlist_achive_product_info', 'appw_meta_wishlist');
DELETE FROM wp_usermeta WHERE meta_key IN ('appw_wishlist_achive_product_info', 'appw_meta_wishlist');
DELETE FROM wp_termmeta WHERE meta_key IN ('appw_wishlist_achive_product_info', 'appw_meta_wishlist');
DELETE FROM wp_commentmeta WHERE meta_key IN ('appw_wishlist_achive_product_info', 'appw_meta_wishlist');

