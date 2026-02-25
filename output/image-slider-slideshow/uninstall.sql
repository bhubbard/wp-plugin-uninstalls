-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpg-slider-images-default', 'img-slider-v', 'img-slider-type', 'img-slider-installDate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('slider-images', 'img-slider-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('slider-images', 'img-slider-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('slider-images', 'img-slider-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('slider-images', 'img-slider-settings');

