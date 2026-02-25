-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('httpbl_age_thres', 'httpbl_threat_thres', 'httpbl_threat_thres_s', 'httpbl_threat_thres_h', 'httpbl_threat_thres_c', 'httpbl_white_listed_ips', 'httpbl_hp', 'httpbl_log', 'httpbl_stats', 'httpbl_stats_pattern', 'httpbl_stats_link', 'httpbl_key', 'httpbl_not_logged_ips', 'httpbl_log_blocked_only', 'dashboard_widget_options');
DELETE FROM wp_options WHERE option_name LIKE 'httpbl_deny_%';

