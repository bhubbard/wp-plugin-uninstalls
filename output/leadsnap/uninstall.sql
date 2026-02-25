-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsl_settings', 'wncrm_source_id', 'wncrm_is_already_called');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wsl_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wsl_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wsl_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wsl_settings');

