-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_scraps_use_plugin', '_scraps_options', '_scraps_bg_color', '_scraps_bg_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_scraps_use_plugin', '_scraps_options', '_scraps_bg_color', '_scraps_bg_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_scraps_use_plugin', '_scraps_options', '_scraps_bg_color', '_scraps_bg_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_scraps_use_plugin', '_scraps_options', '_scraps_bg_color', '_scraps_bg_image');

