-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kontainer_secret', 'kontainer_url', 'kontainer_secret_fragment', 'kontainer_use_api', 'fileupload_maxk');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kontainer_file_id', '_kontainer_folder_id', '_kontainer_file_thumb', '_kontainer_edit_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kontainer_file_id', '_kontainer_folder_id', '_kontainer_file_thumb', '_kontainer_edit_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kontainer_file_id', '_kontainer_folder_id', '_kontainer_file_thumb', '_kontainer_edit_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kontainer_file_id', '_kontainer_folder_id', '_kontainer_file_thumb', '_kontainer_edit_url');

