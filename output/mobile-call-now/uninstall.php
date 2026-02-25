<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'color%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mobile_calL_now');
delete_site_option('mobile_calL_now');
delete_option('mobile_calL_now_activation');
delete_site_option('mobile_calL_now_activation');
delete_option('mobile_calL_now_text');
delete_site_option('mobile_calL_now_text');
delete_option('color1');
delete_site_option('color1');
delete_option('color2');
delete_site_option('color2');
delete_option('color3');
delete_site_option('color3');
delete_option('color4');
delete_site_option('color4');

