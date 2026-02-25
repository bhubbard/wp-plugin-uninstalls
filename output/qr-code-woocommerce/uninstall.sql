-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wooqr_option_name', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_qr_code', 'coupon_amount', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_qr_code', 'coupon_amount', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_qr_code', 'coupon_amount', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_qr_code', 'coupon_amount', '_price');

