-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pw_bogo_use_coupons', 'woocommerce_enable_coupons');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('description');
DELETE FROM wp_usermeta WHERE meta_key IN ('description');
DELETE FROM wp_termmeta WHERE meta_key IN ('description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('description');

