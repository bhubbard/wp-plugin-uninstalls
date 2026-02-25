-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('icon', '_private_note', 'advocate_experience', 'practicing_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('icon', '_private_note', 'advocate_experience', 'practicing_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('icon', '_private_note', 'advocate_experience', 'practicing_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('icon', '_private_note', 'advocate_experience', 'practicing_fields');

