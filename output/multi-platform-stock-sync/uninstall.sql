-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpss_cron_last_call', 'mpss_cronjob_settings', 'mpss_platforms', 'mpss_log_settings');

