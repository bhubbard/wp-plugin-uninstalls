-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('htsec_nvd_api_key', 'htsec_check_progress', 'htsec_vulnerabilities', 'htsec_last_cve_check', 'htsec_enable_cve_alerts', 'htsec_alert_email', 'htsec_enable_login_alerts', 'htsec_maintenance_mode', 'htsec_maintenance_ips', 'htsec_show_plugin_badges', 'htsec_enable_headers', 'htsec_disable_user_enumeration');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('htsec_dismissed_error_notice', 'htsec_dismissed_success_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('htsec_dismissed_error_notice', 'htsec_dismissed_success_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('htsec_dismissed_error_notice', 'htsec_dismissed_success_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('htsec_dismissed_error_notice', 'htsec_dismissed_success_notice');

