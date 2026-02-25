<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgc_fullcalendar_theme');
delete_site_option('pgc_fullcalendar_theme');
delete_option('pgc_selected_calendar_ids');
delete_site_option('pgc_selected_calendar_ids');
delete_option('pgc_fullcalendar_version');
delete_site_option('pgc_fullcalendar_version');
delete_option('pgc_cache_time');
delete_site_option('pgc_cache_time');
delete_option('pgc_access_token');
delete_site_option('pgc_access_token');
delete_option('pgc_api_key');
delete_site_option('pgc_api_key');
delete_option('pgc_show_private_events');
delete_site_option('pgc_show_private_events');
delete_option('pgc_private_events_title');
delete_site_option('pgc_private_events_title');
delete_option('pgc_public_calendarlist');
delete_site_option('pgc_public_calendarlist');
delete_option('pgc_refresh_token');
delete_site_option('pgc_refresh_token');
delete_option('pgc_calendarlist');
delete_site_option('pgc_calendarlist');
delete_option('pgc_colorlist');
delete_site_option('pgc_colorlist');
delete_option('pgc_client_secret');
delete_site_option('pgc_client_secret');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pgc_notices_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

