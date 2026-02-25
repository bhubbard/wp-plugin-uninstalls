-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fg_temp_metadata', 'fg_perm_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('fg_temp_metadata', 'fg_perm_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('fg_temp_metadata', 'fg_perm_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fg_temp_metadata', 'fg_perm_metadata');

