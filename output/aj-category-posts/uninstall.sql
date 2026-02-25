-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajcps_custom_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ajcps_category', '_ajcps_count', '_ajcps_columns', '_ajcps_excerpt_length', 'post_views_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ajcps_category', '_ajcps_count', '_ajcps_columns', '_ajcps_excerpt_length', 'post_views_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ajcps_category', '_ajcps_count', '_ajcps_columns', '_ajcps_excerpt_length', 'post_views_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ajcps_category', '_ajcps_count', '_ajcps_columns', '_ajcps_excerpt_length', 'post_views_count');

