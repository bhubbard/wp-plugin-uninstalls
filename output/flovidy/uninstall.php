<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Flovidy_Plugin_bitly_access_token');
delete_site_option('Flovidy_Plugin_bitly_access_token');
delete_option('Flovidy_Plugin_uk_ref');
delete_site_option('Flovidy_Plugin_uk_ref');
delete_option('Flovidy_Plugin_jp_ref');
delete_site_option('Flovidy_Plugin_jp_ref');
delete_option('Flovidy_Plugin_br_ref');
delete_site_option('Flovidy_Plugin_br_ref');
delete_option('Flovidy_Plugin_au_ref');
delete_site_option('Flovidy_Plugin_au_ref');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_ref' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('Flovidy_Plugin_us_ref');
delete_site_option('Flovidy_Plugin_us_ref');

