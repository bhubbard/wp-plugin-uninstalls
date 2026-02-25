-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jamify_hfs_allow_author', 'jamify_hfs_allow_contributor', 'jamify_hfs_insert_header', 'jamify_hfs_insert_body', 'jamify_hfs_insert_footer', 'jamify_hfs_clean_on_uninstall', 'jamify_hfs_insert_header_priority', 'jamify_hfs_insert_body_priority', 'jamify_hfs_insert_footer_priority', 'shfs_script_access_level', 'shfs_insert_header', 'shfs_insert_footer', 'shfs_insert_header_priority', 'shfs_insert_footer_priority');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_inpost_head_script');
DELETE FROM wp_usermeta WHERE meta_key IN ('_inpost_head_script');
DELETE FROM wp_termmeta WHERE meta_key IN ('_inpost_head_script');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_inpost_head_script');

