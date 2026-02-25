-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wgs_security_code', '_wgs_troubleshoot_mode_theme', '_wgs_troubleshoot_mode_plugins', '_wgs_security_nonce', 'wgs_restore_points', 'wgs_backup_constants');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wgs_troubleshoot_mode_verify', '_wgs_troubleshoot_mode', '_wgs_user', '_wgs_created', '_wgs_token', 'show_welcome_panel', '_wgs_user_status', '_wgs_last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wgs_troubleshoot_mode_verify', '_wgs_troubleshoot_mode', '_wgs_user', '_wgs_created', '_wgs_token', 'show_welcome_panel', '_wgs_user_status', '_wgs_last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wgs_troubleshoot_mode_verify', '_wgs_troubleshoot_mode', '_wgs_user', '_wgs_created', '_wgs_token', 'show_welcome_panel', '_wgs_user_status', '_wgs_last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wgs_troubleshoot_mode_verify', '_wgs_troubleshoot_mode', '_wgs_user', '_wgs_created', '_wgs_token', 'show_welcome_panel', '_wgs_user_status', '_wgs_last_login');

