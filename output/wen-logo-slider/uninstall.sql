-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wen_logo_slider_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wen_logo_slider_settings', '_wls_slides');
DELETE FROM wp_usermeta WHERE meta_key IN ('wen_logo_slider_settings', '_wls_slides');
DELETE FROM wp_termmeta WHERE meta_key IN ('wen_logo_slider_settings', '_wls_slides');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wen_logo_slider_settings', '_wls_slides');

