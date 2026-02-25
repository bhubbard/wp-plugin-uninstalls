-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crontrol_schedules', 'doing_cron', 'crontrol-cron-test-ok');

