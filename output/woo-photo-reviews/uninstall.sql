-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_reviews', 'woocommerce_enable_coupons', '_wcpr_nkt_setting', 'villatheme_hide_admin_toolbar', 'woocommerce_review_rating_verification_label', 'woocommerce_photo_review_update_data_version_1_1_0', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcpr_user_reviewed_product', 'reviews-images', 'rating', 'kt_unique_coupon', 'verified', 'coupon_for_reviews', 'coupon_email', 'gdpr_agree', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcpr_user_reviewed_product', 'reviews-images', 'rating', 'kt_unique_coupon', 'verified', 'coupon_for_reviews', 'coupon_email', 'gdpr_agree', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcpr_user_reviewed_product', 'reviews-images', 'rating', 'kt_unique_coupon', 'verified', 'coupon_for_reviews', 'coupon_email', 'gdpr_agree', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcpr_user_reviewed_product', 'reviews-images', 'rating', 'kt_unique_coupon', 'verified', 'coupon_for_reviews', 'coupon_email', 'gdpr_agree', '_wp_attachment_image_alt');

