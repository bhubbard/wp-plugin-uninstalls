-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('erifl_delete_table');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('error_msg', 'error', '_edit_last', 'featured-image');
DELETE FROM wp_usermeta WHERE meta_key IN ('error_msg', 'error', '_edit_last', 'featured-image');
DELETE FROM wp_termmeta WHERE meta_key IN ('error_msg', 'error', '_edit_last', 'featured-image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('error_msg', 'error', '_edit_last', 'featured-image');

