<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awesome_ads_chitika_json');
delete_site_option('awesome_ads_chitika_json');
delete_option('awesome_ads_users_chitika');
delete_site_option('awesome_ads_users_chitika');
delete_option('awesome_ads_google_json');
delete_site_option('awesome_ads_google_json');
delete_option('awesome_ads_users_google');
delete_site_option('awesome_ads_users_google');
delete_option('awesome-ads-networks');
delete_site_option('awesome-ads-networks');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'awesome_ads_users_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_json' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

