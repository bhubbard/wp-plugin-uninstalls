<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auglio_try_on_mirror_version');
delete_site_option('auglio_try_on_mirror_version');
delete_option('auglio_installation_id');
delete_site_option('auglio_installation_id');
delete_option('auglio_settings');
delete_site_option('auglio_settings');
delete_option('auglio_api');
delete_site_option('auglio_api');
delete_option('auglio_product_feed');
delete_site_option('auglio_product_feed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'auglio_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

