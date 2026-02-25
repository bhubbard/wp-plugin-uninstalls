<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpleblogcard_settings');
delete_site_option('simpleblogcard_settings');
delete_option('simpleblogcard_access_ids');
delete_site_option('simpleblogcard_access_ids');
delete_option('simpleblogcard_template');
delete_site_option('simpleblogcard_template');
delete_option('simpleblogcard_timeout');
delete_site_option('simpleblogcard_timeout');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_simple_blog_card_%', '_site_transient_simple_blog_card_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

