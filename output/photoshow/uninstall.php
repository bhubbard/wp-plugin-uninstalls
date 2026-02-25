<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('photoshow_google_active');
delete_site_option('photoshow_google_active');
delete_option('photoshow_google_cx');
delete_site_option('photoshow_google_cx');
delete_option('photoshow_google_api_key');
delete_site_option('photoshow_google_api_key');
delete_option('photoshow_flickr_api_key');
delete_site_option('photoshow_flickr_api_key');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

