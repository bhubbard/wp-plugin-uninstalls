-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bearmor_settings', 'bearmor_last_scan_time', 'bearmor_last_malware_scan', 'bearmor_malware_scan_results', 'bearmor_ip_whitelist', 'bearmor_malware_scan_enabled', 'bearmor_deep_scan_enabled', 'bearmor_header_x_frame', 'bearmor_2fa_enabled', 'bearmor_checksum_baseline_date', 'bearmor_malware_whitelist', 'bearmor_2fa_excluded_users', 'bearmor_site_id', 'bearmor_db_version', 'bearmor_needs_baseline', 'bearmor_last_uptime_sync', 'bearmor_scan_exclusions', 'bearmor_wpconfig_baseline', 'bearmor_muplugins_baseline', 'bearmor_last_scan_status', 'bearmor_header_content_type', 'bearmor_header_referrer', 'bearmor_header_permissions', 'bearmor_header_xss', 'bearmor_hide_wp_version', 'bearmor_block_user_enum', 'bearmor_disable_login_errors', 'bearmor_disable_xmlrpc', 'bearmor_force_ssl', 'bearmor_plan', 'bearmor_last_verified', 'bearmor_grace_period', 'bearmor_login_events', 'bearmor_login_anomalies', 'bearmor_site_id_created', 'bearmor_license_key', 'bearmor_registration_time', 'bearmor_last_vulnerability_scan', 'bearmor_notified_vulns', 'bearmor_baseline_checked', 'bearmor_uploads_file_count', 'bearmor_license_cache', 'bearmor_pro_enabled', 'bearmor_license_expires', 'bearmor_trial_requested');
DELETE FROM wp_options WHERE option_name LIKE 'bearmor_plugin_baseline_%';
DELETE FROM wp_options WHERE option_name LIKE 'bearmor_theme_baseline_%';
DELETE FROM wp_options WHERE option_name LIKE 'bearmor_core_checksums_%';
DELETE FROM wp_options WHERE option_name LIKE 'bearmor_2fa_code_%';
DELETE FROM wp_options WHERE option_name LIKE 'bearmor_2fa_user_%';
DELETE FROM wp_options WHERE option_name LIKE 'bearmor_batch_%';
DELETE FROM wp_options WHERE option_name LIKE 'bearmor_lockout_email_%';
DELETE FROM wp_options WHERE option_name LIKE 'bearmor_auto_disabling_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bearmor_2fa_remember_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('bearmor_2fa_remember_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('bearmor_2fa_remember_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bearmor_2fa_remember_token');

