<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wb_force_locale');
delete_site_option('wb_force_locale');
delete_option('wb_force_utf8');
delete_site_option('wb_force_utf8');
delete_option('wb_cache_time');
delete_site_option('wb_cache_time');
delete_option('wb_guild_name');
delete_site_option('wb_guild_name');
delete_option('wb_realm_name');
delete_site_option('wb_realm_name');
delete_option('wb_guild_rank');
delete_site_option('wb_guild_rank');
delete_option('wb_gm_name');
delete_site_option('wb_gm_name');
delete_option('wb_active_tool');
delete_site_option('wb_active_tool');
delete_option('wb_calendar_alert');
delete_site_option('wb_calendar_alert');
delete_option('wb_utc');
delete_site_option('wb_utc');

// Clear Cron Jobs
wp_clear_scheduled_hook('wb_schedule_roster');

