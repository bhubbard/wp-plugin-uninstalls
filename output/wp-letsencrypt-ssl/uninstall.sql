-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wple_show_review', 'wple_show_review_disabled', 'wple_show_reminder', 'wple_mixed_issues', 'wple_mixed_issues_disabled', 'wple_notice_trial', 'wple_notice_disabled_trial', 'wple_version', 'wple_plan_choose', 'wple_activate', 'wple_opts', 'wple_ssl_screen', 'wple_backup_suggested', 'wple_have_cpanel', 'wple_have_plesk', 'wple_have_directadmin', 'wple_have_siteground', 'wple_parent_reachable', 'wple_error', 'wple_backend', 'wple_hold_cron', 'wple_order_refreshed', 'wple_renewal_failed_notice', 'wple_ssl_monitoring', 'wple_dismissed_notices', 'wple_ssl_errors', 'wple_email_certs', 'wple_mscan_integrity', 'wple_malware_ignorelist', 'wple_malware_lastscan', 'wple_xxss', 'wple_xcontenttype', 'wple_ssl_valid', 'wple_upgrade_insecure', 'wple_hsts', 'wple_vulnerability_scan', 'wple_vulnerability_lastscan', 'wple_security_settings', 'wple_failed_verification', 'wple_stage', 'wple_survey_interests', 'wple_sectigo', 'wple_disable_spmode', 'wple_http_valid', 'wple_send_usage', 'wple_sourceip', 'wple_acc_key', 'wple_priv_key', 'wple_mixed_content_fixer', 'wple_referrer');
DELETE FROM wp_options WHERE option_name IN ('wple_xframe', 'wple_ssllabs_expiry', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wple_plan_chosen', 'wple_ssllabs', 'wple_alternate_headers', 'wple_vulnerability_scan', 'wple_survey_pending', 'health-check-site-status-result', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'wple_%';
DELETE FROM wp_options WHERE option_name LIKE 'wple_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'wple_notice_disabled_%';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

