<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pic_format');
delete_site_option('pic_format');
delete_option('pic_css');
delete_site_option('pic_css');
delete_option('pic_days');
delete_site_option('pic_days');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pic_%', '_site_transient_pic_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

