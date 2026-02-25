-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_file_search_wfs_last_update_key', 'wp_file_search_wfs_file_search');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_doc_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_doc_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_doc_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_doc_content');

