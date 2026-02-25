-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_block', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_tax_display_shop', 'last_demo_unlink_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_booster_product_banner_img', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'total_sales', 'wc_booster_product_usps', 'wc_booster_wishlist', '_stock', 'wc_booster_favourites_demo', 'wc_booster_category_icon');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_booster_product_banner_img', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'total_sales', 'wc_booster_product_usps', 'wc_booster_wishlist', '_stock', 'wc_booster_favourites_demo', 'wc_booster_category_icon');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_booster_product_banner_img', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'total_sales', 'wc_booster_product_usps', 'wc_booster_wishlist', '_stock', 'wc_booster_favourites_demo', 'wc_booster_category_icon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_booster_product_banner_img', 'thumbnail_id', '_wp_attachment_image_alt', 'rating', 'total_sales', 'wc_booster_product_usps', 'wc_booster_wishlist', '_stock', 'wc_booster_favourites_demo', 'wc_booster_category_icon');

