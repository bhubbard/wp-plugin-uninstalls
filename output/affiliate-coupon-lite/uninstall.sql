-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affiliate_coupon_lite_settings', 'cp_deal_text', 'cp_coupon_text', 'cp_dealac_text', 'cp_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cp_store_image', 'affiliate_coupon_lite_code', 'affiliate_coupon_lite_affiliate_link', 'affiliate_coupon_lite_popular', 'affiliate_coupon_lite_expiry', 'affiliate_coupon_lite_description', 'affiliate_coupon_lite_voteup');
DELETE FROM wp_usermeta WHERE meta_key IN ('cp_store_image', 'affiliate_coupon_lite_code', 'affiliate_coupon_lite_affiliate_link', 'affiliate_coupon_lite_popular', 'affiliate_coupon_lite_expiry', 'affiliate_coupon_lite_description', 'affiliate_coupon_lite_voteup');
DELETE FROM wp_termmeta WHERE meta_key IN ('cp_store_image', 'affiliate_coupon_lite_code', 'affiliate_coupon_lite_affiliate_link', 'affiliate_coupon_lite_popular', 'affiliate_coupon_lite_expiry', 'affiliate_coupon_lite_description', 'affiliate_coupon_lite_voteup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cp_store_image', 'affiliate_coupon_lite_code', 'affiliate_coupon_lite_affiliate_link', 'affiliate_coupon_lite_popular', 'affiliate_coupon_lite_expiry', 'affiliate_coupon_lite_description', 'affiliate_coupon_lite_voteup');

