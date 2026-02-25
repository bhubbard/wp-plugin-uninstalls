-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'ms_files_rewriting', 'defend_wp_firewall_setting_redirect_on_activation', 'defend_wp_firewall_error_notice', 'update_plugins', 'defend_wp_firewall_defendwp_pro_not_min_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dwp_iwp_auto_login_hash', '_rsssl_two_factor_nonce');
DELETE FROM wp_usermeta WHERE meta_key IN ('dwp_iwp_auto_login_hash', '_rsssl_two_factor_nonce');
DELETE FROM wp_termmeta WHERE meta_key IN ('dwp_iwp_auto_login_hash', '_rsssl_two_factor_nonce');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dwp_iwp_auto_login_hash', '_rsssl_two_factor_nonce');

