-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpmwc_product_id', 'cpmwc_user_roles');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cpmwc_coupon_deducted');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cpmwc_coupon_deducted');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cpmwc_coupon_deducted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cpmwc_coupon_deducted');

