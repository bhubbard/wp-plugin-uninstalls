-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sd_coupon_store_logo', '_sd_coupon_store_short_description', '_sd_coupon_category_short_description', '_sd_coupon_category_icon', '_sd_coupon_store', '_sd_coupon_image', '_sd_coupon_is_exclusive', '_sd_coupon_expired_date', '_sd_coupon_code', '_sd_coupon_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sd_coupon_store_logo', '_sd_coupon_store_short_description', '_sd_coupon_category_short_description', '_sd_coupon_category_icon', '_sd_coupon_store', '_sd_coupon_image', '_sd_coupon_is_exclusive', '_sd_coupon_expired_date', '_sd_coupon_code', '_sd_coupon_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sd_coupon_store_logo', '_sd_coupon_store_short_description', '_sd_coupon_category_short_description', '_sd_coupon_category_icon', '_sd_coupon_store', '_sd_coupon_image', '_sd_coupon_is_exclusive', '_sd_coupon_expired_date', '_sd_coupon_code', '_sd_coupon_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sd_coupon_store_logo', '_sd_coupon_store_short_description', '_sd_coupon_category_short_description', '_sd_coupon_category_icon', '_sd_coupon_store', '_sd_coupon_image', '_sd_coupon_is_exclusive', '_sd_coupon_expired_date', '_sd_coupon_code', '_sd_coupon_link');

