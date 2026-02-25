-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dv_disable_single_view', 'dv_coupon_template', 'dv_display_likes', 'dv_display_dislikes', 'dv_display_clicks', 'tgt_favicon', 'dv_use_store_imgs', 'dv_use_timthumb', 'dv_use_cloaked_url', 'dv_dis_facebook', 'dv_dis_twitter', 'dv_dis_gplus');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('coupon_store_url', 'store_url', 'store_img', 'coupon_discount', 'liked_dis_people', 'clicked_people', 'likes', 'dislikes', 'clicks', 'coupon_code', 'views', 'is_verified', 'coupon_expiry_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('coupon_store_url', 'store_url', 'store_img', 'coupon_discount', 'liked_dis_people', 'clicked_people', 'likes', 'dislikes', 'clicks', 'coupon_code', 'views', 'is_verified', 'coupon_expiry_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('coupon_store_url', 'store_url', 'store_img', 'coupon_discount', 'liked_dis_people', 'clicked_people', 'likes', 'dislikes', 'clicks', 'coupon_code', 'views', 'is_verified', 'coupon_expiry_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('coupon_store_url', 'store_url', 'store_img', 'coupon_discount', 'liked_dis_people', 'clicked_people', 'likes', 'dislikes', 'clicks', 'coupon_code', 'views', 'is_verified', 'coupon_expiry_date');

