<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('appointmentsw_changes');
delete_site_option('appointmentsw_changes');
delete_option('appointmentsw');
delete_site_option('appointmentsw');
delete_option('asw-guest');
delete_site_option('asw-guest');
delete_option('asw-duration');
delete_site_option('asw-duration');
delete_option('asw-numdays');
delete_site_option('asw-numdays');
delete_option('asw-maxoffset');
delete_site_option('asw-maxoffset');
delete_option('asw-start_time_0');
delete_site_option('asw-start_time_0');
delete_option('asw-end_time_0');
delete_site_option('asw-end_time_0');
delete_option('asw-start_time_1');
delete_site_option('asw-start_time_1');
delete_option('asw-end_time_1');
delete_site_option('asw-end_time_1');
delete_option('appointmentsw-subject');
delete_site_option('appointmentsw-subject');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thechamp_large_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thechamp_large_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thechamp_large_avatar' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thechamp_large_avatar' ) );

