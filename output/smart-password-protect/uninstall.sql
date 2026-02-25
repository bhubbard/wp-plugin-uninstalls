-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sppwp_options', 'sppwp_active_features', 'sppwp_temp_login_settings', 'sppwp_temp_logins', 'sppwp_version', 'sppwp_activation_redirect', 'sppwp_update_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sppwp_is_temp_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('sppwp_is_temp_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('sppwp_is_temp_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sppwp_is_temp_user');

