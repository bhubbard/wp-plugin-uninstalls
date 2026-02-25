-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcbr_settings', 'wc_feature_woocommerce_brands_enabled', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcbr_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpcbr_logo', 'wpcbr_banner', 'wpcbr_banner_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpcbr_logo', 'wpcbr_banner', 'wpcbr_banner_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpcbr_logo', 'wpcbr_banner', 'wpcbr_banner_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpcbr_logo', 'wpcbr_banner', 'wpcbr_banner_link');

