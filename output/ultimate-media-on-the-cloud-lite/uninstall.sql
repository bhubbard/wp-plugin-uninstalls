-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%advanced_delete_cloud_file';
DELETE FROM wp_options WHERE option_name LIKE '%option_scheme';
DELETE FROM wp_options WHERE option_name LIKE '%option_keep_copy';
DELETE FROM wp_options WHERE option_name LIKE '%option_is_active';
DELETE FROM wp_options WHERE option_name LIKE '%option_addon';
DELETE FROM wp_options WHERE option_name LIKE '%post_types';
DELETE FROM wp_options WHERE option_name LIKE '%file_types';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ucm_storage_metadata', '_ucm_storage_adapter');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ucm_storage_metadata', '_ucm_storage_adapter');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ucm_storage_metadata', '_ucm_storage_adapter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ucm_storage_metadata', '_ucm_storage_adapter');

