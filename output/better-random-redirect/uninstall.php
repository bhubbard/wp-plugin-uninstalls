<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brr_default_slug');
delete_site_option('brr_default_slug');
delete_option('brr_default_category');
delete_site_option('brr_default_category');
delete_option('brr_default_posttype');
delete_site_option('brr_default_posttype');
delete_option('brr_default_timeout');
delete_site_option('brr_default_timeout');
delete_option('brr_transient_id');
delete_site_option('brr_transient_id');
delete_option('brr_query_posttype_pattern');
delete_site_option('brr_query_posttype_pattern');
delete_option('brr_query_posttype_category_pattern');
delete_site_option('brr_query_posttype_category_pattern');
delete_option('brr_query_qtranslate_pattern');
delete_site_option('brr_query_qtranslate_pattern');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_max', '_site_transient_%_max' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

