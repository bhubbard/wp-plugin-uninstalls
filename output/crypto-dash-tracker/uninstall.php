<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_showdashwidget' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_dashwidgetcoininfo' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('Crypto_Dash_Tracker_dashwidgetcoininfo');
delete_site_option('Crypto_Dash_Tracker_dashwidgetcoininfo');
delete_option('Crypto_Dash_Tracker_showdashwidget');
delete_site_option('Crypto_Dash_Tracker_showdashwidget');

// Delete Transients
delete_transient('crypto-dash-tracker');
delete_site_transient('crypto-dash-tracker');

