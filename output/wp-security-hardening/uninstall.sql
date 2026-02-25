-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whp_fixer_option', 'whp_admin_page', 'whp_radio_clickjacking_protection', 'whp_xss_protection', 'whp_content_sniffing_protection', 'whp_http_secure_flag', 'whp_custom_admin_report_email', 'whp_custom_admin_schedule_audit', 'custom_admin_report_email', 'whp_scan_results', 'whp_scan_results_time', 'whp_redirect', 'hard_cron', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE 'php_check_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('whp_subscribed_email', 'hide_secure_subs');
DELETE FROM wp_usermeta WHERE meta_key IN ('whp_subscribed_email', 'hide_secure_subs');
DELETE FROM wp_termmeta WHERE meta_key IN ('whp_subscribed_email', 'hide_secure_subs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('whp_subscribed_email', 'hide_secure_subs');

