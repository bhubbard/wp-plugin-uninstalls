-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woorelated_wtitle', 'woorelated_nproducts', 'woorelated_basedon', 'woorelated_exclude', 'woorelated_slider');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wrprr_peachpay_banner_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wrprr_peachpay_banner_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wrprr_peachpay_banner_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wrprr_peachpay_banner_dismissed');

