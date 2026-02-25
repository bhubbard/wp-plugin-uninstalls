-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('locale', 'first_name', 'last_name', 'image', 'amd_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('locale', 'first_name', 'last_name', 'image', 'amd_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('locale', 'first_name', 'last_name', 'image', 'amd_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('locale', 'first_name', 'last_name', 'image', 'amd_post');

