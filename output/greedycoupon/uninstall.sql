-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gd_hide_theme_header', 'gd_permalink');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('coupons_code', 'coupon_short_desc', 'coupon_affiliate_link', 'coupon_store_name', 'coupon_show', 'rzilla_hosting_name', 'coupon_count', 'post_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('coupons_code', 'coupon_short_desc', 'coupon_affiliate_link', 'coupon_store_name', 'coupon_show', 'rzilla_hosting_name', 'coupon_count', 'post_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('coupons_code', 'coupon_short_desc', 'coupon_affiliate_link', 'coupon_store_name', 'coupon_show', 'rzilla_hosting_name', 'coupon_count', 'post_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('coupons_code', 'coupon_short_desc', 'coupon_affiliate_link', 'coupon_store_name', 'coupon_show', 'rzilla_hosting_name', 'coupon_count', 'post_id');

