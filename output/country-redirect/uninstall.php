<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'cntrd_redirect_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cntrd_whitelist_ip');
delete_site_option('cntrd_whitelist_ip');
delete_option('cntrd_whitelist_bot');
delete_site_option('cntrd_whitelist_bot');
delete_option('cntrd_engine_sxgeo');
delete_site_option('cntrd_engine_sxgeo');
delete_option('cntrd_engine_geoip2');
delete_site_option('cntrd_engine_geoip2');
delete_option('cntrd_engine_ipapi');
delete_site_option('cntrd_engine_ipapi');
delete_option('cntrd_version');
delete_site_option('cntrd_version');

// Delete Transients
delete_transient('cntrd-activation-notice');
delete_site_transient('cntrd-activation-notice');

