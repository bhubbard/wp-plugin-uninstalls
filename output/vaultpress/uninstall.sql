-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_vp_signatures', '_vp_current_scan', '_vp_ignore_symlinks', '_vp_batch_file_size', 'vaultpress', 'vaultpress_auto_connect', 'vaultpress_connection', 'vaultpress_key', 'vaultpress_secret', 'vaultpress_service_ips', 'vaultpress_allow_forwarded_for', 'vaultpress_service_ips_external_cidr', '_vp_config_option_name_ignore', '_vp_config_post_meta_name_ignore', '_vp_config_should_ignore_files', 'vaultpress_auto_register', 'current_theme', 'vaultpress_service_ips_external');
DELETE FROM wp_options WHERE option_name LIKE '_vp_ai_ping_%';

