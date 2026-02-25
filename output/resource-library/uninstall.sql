-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mdresourcelib_doc', '_mdresourcelib_info', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mdresourcelib_doc', '_mdresourcelib_info', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mdresourcelib_doc', '_mdresourcelib_info', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mdresourcelib_doc', '_mdresourcelib_info', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fields';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fields';

