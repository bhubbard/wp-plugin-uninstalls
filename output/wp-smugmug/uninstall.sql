-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_smugmug_version', 'wp_smugmug_installed', 'wp_smugmug_thumbsize', 'wp_smugmug_size', 'wp_smugmug_imagecount', 'wp_smugmug_start', 'wp_smugmug_num', 'wp_smugmug_link', 'wp_smugmug_titletag', 'wp_smugmug_captions', 'wp_smugmug_sort', 'wp_smugmug_lightbox', 'wp_smugmug_smugmug', 'wp_smugmug_window', 'wp_smugmug_css', 'wp_smugmug_css_ie', 'wp_smugmug_title', 'wp_smugmug_description');
DELETE FROM wp_options WHERE option_name LIKE 'wp_smugmug_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-smugmug', 'wp-smugmug-options');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-smugmug', 'wp-smugmug-options');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-smugmug', 'wp-smugmug-options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-smugmug', 'wp-smugmug-options');

