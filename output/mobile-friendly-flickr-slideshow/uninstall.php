<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fshow_flickr_api_key');
delete_site_option('fshow_flickr_api_key');
delete_option('fshow_default_photosetid');
delete_site_option('fshow_default_photosetid');
delete_option('fshow_default_width');
delete_site_option('fshow_default_width');
delete_option('fshow_default_height');
delete_site_option('fshow_default_height');
delete_option('fshow_gallery_short_url');
delete_site_option('fshow_gallery_short_url');
delete_option('fshow_performance_mode');
delete_site_option('fshow_performance_mode');
delete_option('fshow_flickr_cache_time');
delete_site_option('fshow_flickr_cache_time');
delete_option('fshow_uniqid');
delete_site_option('fshow_uniqid');
delete_option('fshow_default_username');
delete_site_option('fshow_default_username');
delete_option('fshow_default_thumburl');
delete_site_option('fshow_default_thumburl');

// Delete Transients
delete_transient('fshow_users');
delete_site_transient('fshow_users');
delete_transient('fshow_photosets');
delete_site_transient('fshow_photosets');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fshow_remote_%', '_site_transient_fshow_remote_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

