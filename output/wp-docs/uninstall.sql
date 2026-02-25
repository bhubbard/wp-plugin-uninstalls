-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdocs_versions_type', 'wpdocs_options', 'wpdocs_view', 'wpdocs_memphis_uninstall', 'wpdocs_clear_clutter', 'mdocs-cats', 'wpdocs_imported_folder', 'wpdocs_imported_files', 'mdocs-list', 'wpdocs_memphis_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpdocs_security', 'wpdocs_items_by_user', 'wpdocs_items', '_wpdocs_dir_options', '_wp_attached_file', '_wpdocs_memphis_slug', '_wpdocs_memphis_media_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpdocs_security', 'wpdocs_items_by_user', 'wpdocs_items', '_wpdocs_dir_options', '_wp_attached_file', '_wpdocs_memphis_slug', '_wpdocs_memphis_media_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpdocs_security', 'wpdocs_items_by_user', 'wpdocs_items', '_wpdocs_dir_options', '_wp_attached_file', '_wpdocs_memphis_slug', '_wpdocs_memphis_media_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpdocs_security', 'wpdocs_items_by_user', 'wpdocs_items', '_wpdocs_dir_options', '_wp_attached_file', '_wpdocs_memphis_slug', '_wpdocs_memphis_media_file');

