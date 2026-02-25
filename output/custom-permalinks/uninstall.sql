-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_permalinks_post_types_settings', 'custom_permalink_table', 'polylang', 'custom_permalinks_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_permalink_language', 'custom_permalink_regenerate_status', 'custom_permalink');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_permalink_language', 'custom_permalink_regenerate_status', 'custom_permalink');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_permalink_language', 'custom_permalink_regenerate_status', 'custom_permalink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_permalink_language', 'custom_permalink_regenerate_status', 'custom_permalink');

