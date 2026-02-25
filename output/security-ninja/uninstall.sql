-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('registration', 'active_sitewide_plugins', 'wf_sn_active_plugins', 'wf_sn_encryption_key', 'wf_sn_site_id', 'wf_sn_encryption_key_old', 'wf_sn_vu_vulns_notice', 'wf_sn_review_notice', 'secnin_fs_migrated2fs', 'wf_sn_cf_blocked_count', 'wf_sn_cf_blocked_today', 'wf_sn_cf_bl_ips', 'wf_sn_cf_vl', 'wf_sn_cf_ips', 'wf_sn_banned_ips', 'wf_sn_cf', 'wf_sn_cs_results', 'wf_sn_results', 'wf_sn_el', 'secnin_last_checked_admin_id', 'sidebars_widgets', 'wf_sn_settings_migrated', 'wf_sn_options', 'wf_sn_wl', 'wf_sn_vu_settings_group', 'wf_sn_ss', 'wf_sn_api_allowed_origins', 'wf_sn_api_access_logs', 'wf_sn_ms_results', 'wf_sn_vu_last_update', 'wf_sn_known_vuln_db_counts', 'wf_sn_vu_last_email', 'wf_sn_vulnerabilities_cache', 'wf_sn_vulnerabilities_cache_timestamp', 'wf_sn_scan_summary', 'wf_sn_vu_vulns', 'wf_sn_vu_outdated', 'wf_sn_vu_settings', 'security_tests_results', 'secnin_activation_redirect', 'wfsn_freemius_state', 'wf_sn_tests', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'update_plugins', 'update_themes', 'secnin_dashboard_updates');
DELETE FROM wp_options WHERE option_name IN ('wf_sn_return_vulnerabilities', 'wp_vers_status', 'secnin_manual_vuln_scan_last', 'sn_secret_url_reset_success', 'settings_errors', 'fs_snooze_period', '_fs_api_connection_retry_counter');
DELETE FROM wp_options WHERE option_name LIKE 'wf_sn_vu_file_validators_%';
DELETE FROM wp_options WHERE option_name LIKE 'security_ninja_%';
DELETE FROM wp_options WHERE option_name LIKE 'geoip_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sn_last_login', 'session_tokens', 'secnin_2fa_secret', 'secnin_2fa_setup_complete', 'secnin_2fa_code_validated', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('sn_last_login', 'session_tokens', 'secnin_2fa_secret', 'secnin_2fa_setup_complete', 'secnin_2fa_code_validated', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('sn_last_login', 'session_tokens', 'secnin_2fa_secret', 'secnin_2fa_setup_complete', 'secnin_2fa_code_validated', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sn_last_login', 'session_tokens', 'secnin_2fa_secret', 'secnin_2fa_setup_complete', 'secnin_2fa_code_validated', 'dismissed_wp_pointers');

