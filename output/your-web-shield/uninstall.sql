-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yourwebshield_risk_threshold', 'yourwebshield_max_requests', 'yourwebshield_window_ms', 'yourwebshield_waf_enabled', 'yourwebshield_waf_sql_enabled', 'yourwebshield_waf_xss_enabled', 'yourwebshield_waf_common_enabled');
DELETE FROM wp_options WHERE option_name LIKE 'yourwebshield_ip_%';

