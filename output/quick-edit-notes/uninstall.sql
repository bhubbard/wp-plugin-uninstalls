-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickeditnotes_enabled_post_types', 'qen_enabled_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_quickeditnotes_notes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_quickeditnotes_notes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_quickeditnotes_notes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_quickeditnotes_notes');

