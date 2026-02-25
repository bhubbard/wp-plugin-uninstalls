<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acs_div_wrapper');
delete_site_option('acs_div_wrapper');
delete_option('acs_class_name');
delete_site_option('acs_class_name');
delete_option('acs_slideshow_effect');
delete_site_option('acs_slideshow_effect');
delete_option('acs_slideshow_interval');
delete_site_option('acs_slideshow_interval');
delete_option('acs_slideshow_transition_time');
delete_site_option('acs_slideshow_transition_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-registration-skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-registered' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-was-registered' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('acs_active');
delete_site_option('acs_active');
delete_option('cmac_afterActivation');
delete_site_option('cmac_afterActivation');

