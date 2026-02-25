-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kp_cspgen_settings_name', 'wpsh_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_kpshg_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_kpshg_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_kpshg_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_kpshg_errors_%';

