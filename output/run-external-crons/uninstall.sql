-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('run_external_cron_settings', 'run_external_cron_last_run');

