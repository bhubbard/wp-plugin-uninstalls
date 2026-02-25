-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pj_pixel_dismissed_config_notice', 'woocommerce_pepperjam_pixel_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pj_pixel_displayed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pj_pixel_displayed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pj_pixel_displayed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pj_pixel_displayed');

