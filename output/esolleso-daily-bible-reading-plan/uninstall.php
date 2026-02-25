<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bibldare_schedule_data');
delete_site_option('bibldare_schedule_data');
delete_option('bibldare_bible_cache_enabled');
delete_site_option('bibldare_bible_cache_enabled');
delete_option('bibldare_bible_language');
delete_site_option('bibldare_bible_language');
delete_option('bibldare_bible_version');
delete_site_option('bibldare_bible_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bibldare_schedule_day_%', '_site_transient_bibldare_schedule_day_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

