-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sdwac_url', 'sdwac_first_time_purchase_coupon', 'sdwac_price_cut_from', 'sdwac_multi');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sdwac_coupon_meta', 'sdwac_coupon_panel', 'sdwac_coupon_main', 'sdwac_coupon_filters', '_sdevs_coupon_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sdwac_coupon_meta', 'sdwac_coupon_panel', 'sdwac_coupon_main', 'sdwac_coupon_filters', '_sdevs_coupon_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sdwac_coupon_meta', 'sdwac_coupon_panel', 'sdwac_coupon_main', 'sdwac_coupon_filters', '_sdevs_coupon_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sdwac_coupon_meta', 'sdwac_coupon_panel', 'sdwac_coupon_main', 'sdwac_coupon_filters', '_sdevs_coupon_meta');

