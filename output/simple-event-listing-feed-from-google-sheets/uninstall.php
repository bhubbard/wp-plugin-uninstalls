<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_event_sheets_sheet_id');
delete_site_option('simple_event_sheets_sheet_id');
delete_option('simple_event_sheets_sheet_name');
delete_site_option('simple_event_sheets_sheet_name');
delete_option('simple_event_sheets_google_api_key');
delete_site_option('simple_event_sheets_google_api_key');
delete_option('simple_event_sheets_passed_events_checkbox');
delete_site_option('simple_event_sheets_passed_events_checkbox');
delete_option('simple_event_sheets_default_view');
delete_site_option('simple_event_sheets_default_view');
delete_option('simple_event_sheets_show_view_toggle');
delete_site_option('simple_event_sheets_show_view_toggle');
delete_option('simple_event_sheets_calendar_start_day');
delete_site_option('simple_event_sheets_calendar_start_day');
delete_option('simple_event_sheets_max_events_per_day');
delete_site_option('simple_event_sheets_max_events_per_day');
delete_option('simple_event_sheets_checkbox');
delete_site_option('simple_event_sheets_checkbox');

