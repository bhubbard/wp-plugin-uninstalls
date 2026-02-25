-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ovoform_user_panel_prefix', 'ovoform_installed', 'ovoform_is_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ovoform_ban', '_wp_attached_file', '_Verify Email');
DELETE FROM wp_usermeta WHERE meta_key IN ('ovoform_ban', '_wp_attached_file', '_Verify Email');
DELETE FROM wp_termmeta WHERE meta_key IN ('ovoform_ban', '_wp_attached_file', '_Verify Email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ovoform_ban', '_wp_attached_file', '_Verify Email');

