-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jellyfish_backdrop', 'jellyfish_backdrop_version');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_crop';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_jellyfish_backdrop_images', '_jellyfish_backdrop_container', '_jellyfish_backdrop_fade_speed', '_jellyfish_backdrop_slide_duration');
DELETE FROM wp_usermeta WHERE meta_key IN ('_jellyfish_backdrop_images', '_jellyfish_backdrop_container', '_jellyfish_backdrop_fade_speed', '_jellyfish_backdrop_slide_duration');
DELETE FROM wp_termmeta WHERE meta_key IN ('_jellyfish_backdrop_images', '_jellyfish_backdrop_container', '_jellyfish_backdrop_fade_speed', '_jellyfish_backdrop_slide_duration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_jellyfish_backdrop_images', '_jellyfish_backdrop_container', '_jellyfish_backdrop_fade_speed', '_jellyfish_backdrop_slide_duration');

