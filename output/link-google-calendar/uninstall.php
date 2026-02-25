<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('link_google_calendar_textarea');
delete_site_option('link_google_calendar_textarea');
delete_option('link_google_calendar_textarea_1');
delete_site_option('link_google_calendar_textarea_1');
delete_option('link_google_calendar_textarea_2');
delete_site_option('link_google_calendar_textarea_2');
delete_option('link_google_calendar_textarea_3');
delete_site_option('link_google_calendar_textarea_3');
delete_option('link_google_calendar_textarea_4');
delete_site_option('link_google_calendar_textarea_4');
delete_option('link_google_calendar_textarea_5');
delete_site_option('link_google_calendar_textarea_5');
delete_option('num_of_calendars');
delete_site_option('num_of_calendars');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'link_google_calendar_textarea_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'link_google_calendar_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'link_google_calendar_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'link_google_calendar_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'link_google_calendar_ignore_notice' ) );

