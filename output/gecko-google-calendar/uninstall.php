<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gecko_calendar_gcal_refresh_token');
delete_site_option('gecko_calendar_gcal_refresh_token');
delete_option('gecko_calendar_gcal_access_token');
delete_site_option('gecko_calendar_gcal_access_token');
delete_option('gecko_calendar_gcal_active_calendars');
delete_site_option('gecko_calendar_gcal_active_calendars');
delete_option('gecko_calendar_gcal_active_calendars_details');
delete_site_option('gecko_calendar_gcal_active_calendars_details');
delete_option('gecko_google_calendar_ping_last_run');
delete_site_option('gecko_google_calendar_ping_last_run');
delete_option('gecko_calendar_gcal_all_calendars');
delete_site_option('gecko_calendar_gcal_all_calendars');
delete_option('gecko_google_calendar_settings_oauth');
delete_site_option('gecko_google_calendar_settings_oauth');
delete_option('gecko_google_calendar_settings_debug');
delete_site_option('gecko_google_calendar_settings_debug');
delete_option('gecko_calendar_gcal_config_location');
delete_site_option('gecko_calendar_gcal_config_location');

// Delete Transients
delete_transient('gecko_google_calendar_upcoming_events');
delete_site_transient('gecko_google_calendar_upcoming_events');
delete_transient('gecko_google_calendar_all_upcoming_events');
delete_site_transient('gecko_google_calendar_all_upcoming_events');

// Clear Cron Jobs
wp_clear_scheduled_hook('gecko_google_calendar_ping');

