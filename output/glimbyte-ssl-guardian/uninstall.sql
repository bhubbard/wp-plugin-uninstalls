-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('glimbyte_ssl_https_enabled', 'glimbyte_ssl_redirect_type', 'glimbyte_ssl_force_all', 'glimbyte_ssl_excluded_urls', 'glimbyte_ssl_mixed_content_fix_enabled', 'glimbyte_ssl_mixed_content_method', 'glimbyte_ssl_cert_alert_enabled', 'glimbyte_ssl_cert_alert_days', 'glimbyte_ssl_cert_alert_email', 'glimbyte_ssl_hsts_enabled', 'glimbyte_ssl_hsts_max_age', 'glimbyte_ssl_hsts_subdomains', 'glimbyte_ssl_hsts_preload', 'glimbyte_ssl_debug_mode', 'glimbyte_ssl_logs', 'glimbyte_ssl_network_force_https', 'glimbyte_ssl_allow_site_override', 'glimbyte_ssl_scan_results', 'glimbyte_ssl_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE 'glimbyte_ssl_%';

