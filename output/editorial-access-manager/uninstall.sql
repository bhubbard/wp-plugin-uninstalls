-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eam_enable_custom_access', 'eam_allowed_roles', 'eam_allowed_users');
DELETE FROM wp_usermeta WHERE meta_key IN ('eam_enable_custom_access', 'eam_allowed_roles', 'eam_allowed_users');
DELETE FROM wp_termmeta WHERE meta_key IN ('eam_enable_custom_access', 'eam_allowed_roles', 'eam_allowed_users');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eam_enable_custom_access', 'eam_allowed_roles', 'eam_allowed_users');

