-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tilda_maps', 'tilda_map_pages', 'tilda_options', 'tilda_projects', 'tilda_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tilda');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tilda');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tilda');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tilda');

