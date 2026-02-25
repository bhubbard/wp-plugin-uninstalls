<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('image_cdn');
delete_site_option('image_cdn');
delete_option('image_cdn_notices');
delete_site_option('image_cdn_notices');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_image_cdn_analytics_%', '_site_transient_image_cdn_analytics_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

