-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glamour_google_fonts', '_glamour_media_list', '_glamour_colors', '_glamour_global_css', '_glamour_global_css_time');
DELETE FROM wp_options WHERE option_name LIKE '%_css';
DELETE FROM wp_options WHERE option_name LIKE '%_css_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_glamour_post_css', '_glamour_css_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_glamour_post_css', '_glamour_css_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_glamour_post_css', '_glamour_css_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_glamour_post_css', '_glamour_css_time');

