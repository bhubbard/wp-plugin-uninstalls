-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_vc_setting_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vc_unique_promo_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('vc_unique_promo_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('vc_unique_promo_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vc_unique_promo_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%coupon-code-text';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%coupon-code-text';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%coupon-code-text';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%coupon-code-text';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%deal-button-text';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%deal-button-text';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%deal-button-text';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%deal-button-text';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%coupon-type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%coupon-type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%coupon-type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%coupon-type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%discount-text';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%discount-text';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%discount-text';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%discount-text';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%hide-coupon';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%hide-coupon';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%hide-coupon';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%hide-coupon';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%link';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%link';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%link';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%link';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%show-expiration';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%show-expiration';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%show-expiration';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%show-expiration';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%expire-date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%expire-date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%expire-date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%expire-date';

