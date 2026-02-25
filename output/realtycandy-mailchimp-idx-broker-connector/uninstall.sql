-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('idx_broker_apikey', 'wpps_settings', 'anh_notices', 'wpps_cron_example_timed_job');

