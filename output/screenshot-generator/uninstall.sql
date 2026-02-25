-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scrgen_width', 'scrgen_height', 'scrgen_enable_cropping', 'scrgen_crop_left', 'scrgen_crop_top', 'scrgen_crop_width', 'scrgen_crop_height', 'scrgen_social_strategy');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_scrgen_screenshot');
DELETE FROM wp_usermeta WHERE meta_key IN ('_scrgen_screenshot');
DELETE FROM wp_termmeta WHERE meta_key IN ('_scrgen_screenshot');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_scrgen_screenshot');

