-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_easter_egg_plugin_settings', 'wp_easter_egg_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpee_added_to_filter');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpee_added_to_filter');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpee_added_to_filter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpee_added_to_filter');

