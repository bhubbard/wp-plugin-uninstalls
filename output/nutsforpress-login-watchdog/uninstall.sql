-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_nfplwd_last_core_check', '_nfproot_plugins_settings', '_nfp_root_settings', '_nfp_settings', '_nfplwd_manually_core_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nfplwd_last_user_ip', '_nfplwd_two_factors_info', 'first_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nfplwd_last_user_ip', '_nfplwd_two_factors_info', 'first_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nfplwd_last_user_ip', '_nfplwd_two_factors_info', 'first_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nfplwd_last_user_ip', '_nfplwd_two_factors_info', 'first_name');

