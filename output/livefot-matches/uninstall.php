<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('livefot_api_key');
delete_site_option('livefot_api_key');
delete_option('livefot_api_url');
delete_site_option('livefot_api_url');
delete_option('livefot_cron_last_run_status_short');
delete_site_option('livefot_cron_last_run_status_short');
delete_option('livefot_cron_last_run_end_short');
delete_site_option('livefot_cron_last_run_end_short');
delete_option('livefot_cron_last_run_status');
delete_site_option('livefot_cron_last_run_status');
delete_option('livefot_cron_last_run_end');
delete_site_option('livefot_cron_last_run_end');
delete_option('livefot_interval_matches');
delete_site_option('livefot_interval_matches');
delete_option('livefot_interval_events');
delete_site_option('livefot_interval_events');
delete_option('livefot_interval_standings');
delete_site_option('livefot_interval_standings');
delete_option('livefot_interval_lineups');
delete_site_option('livefot_interval_lineups');
delete_option('livefot_interval_stats');
delete_site_option('livefot_interval_stats');
delete_option('livefot_enable_cron_job');
delete_site_option('livefot_enable_cron_job');
delete_option('livefot_enable_short_cron_job');
delete_site_option('livefot_enable_short_cron_job');
delete_option('livefot_cron_last_run_start');
delete_site_option('livefot_cron_last_run_start');
delete_option('livefot_cron_last_run_start_short');
delete_site_option('livefot_cron_last_run_start_short');
delete_option('livefot_cron_interval_short');
delete_site_option('livefot_cron_interval_short');
delete_option('livefot_cron_hour');
delete_site_option('livefot_cron_hour');
delete_option('livefot_cron_minute');
delete_site_option('livefot_cron_minute');
delete_option('livefot_manual_date');
delete_site_option('livefot_manual_date');

// Clear Cron Jobs
wp_clear_scheduled_hook('livefot_daily_fetch_fixtures');
wp_clear_scheduled_hook('livefot_short_fetch_fixtures');

