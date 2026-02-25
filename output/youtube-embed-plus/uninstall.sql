-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('youtubeprefs_alloptions', 'embed_size_w', 'embed_size_h', 'embed_autourls');
DELETE FROM wp_options WHERE option_name LIKE '%_migrate';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('embedplus_double_plugin_warning', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('embedplus_double_plugin_warning', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('embedplus_double_plugin_warning', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('embedplus_double_plugin_warning', 'dismissed_wp_pointers');

