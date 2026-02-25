-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('save_post_type', 'format', 'status', 'char_code', 'ignore_firstline', 'public_post_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('save_post_type', 'format', 'status', 'char_code', 'ignore_firstline', 'public_post_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('save_post_type', 'format', 'status', 'char_code', 'ignore_firstline', 'public_post_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('save_post_type', 'format', 'status', 'char_code', 'ignore_firstline', 'public_post_type');

