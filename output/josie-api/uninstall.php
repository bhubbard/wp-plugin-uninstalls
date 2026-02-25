<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('josie_api_cors');
delete_site_option('josie_api_cors');
delete_option('josie_api_max_posts_per_page');
delete_site_option('josie_api_max_posts_per_page');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tlc_up__%', '_site_transient_tlc_up__%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tlc__%', '_site_transient_tlc__%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

