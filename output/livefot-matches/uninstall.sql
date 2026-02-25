-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('livefot_api_key', 'livefot_api_url', 'livefot_cron_last_run_status_short', 'livefot_cron_last_run_end_short', 'livefot_cron_last_run_status', 'livefot_cron_last_run_end', 'livefot_interval_matches', 'livefot_interval_events', 'livefot_interval_standings', 'livefot_interval_lineups', 'livefot_interval_stats', 'livefot_enable_cron_job', 'livefot_enable_short_cron_job', 'livefot_cron_last_run_start', 'livefot_cron_last_run_start_short', 'livefot_cron_interval_short', 'livefot_cron_hour', 'livefot_cron_minute', 'livefot_manual_date');

