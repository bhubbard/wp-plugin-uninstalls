<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('j1sa-username');
delete_site_option('j1sa-username');
delete_option('j1sa-password');
delete_site_option('j1sa-password');
delete_option('j1sa-sender-id');
delete_site_option('j1sa-sender-id');
delete_option('j1sa-sender-display');
delete_site_option('j1sa-sender-display');
delete_option('j1sa-recipient');
delete_site_option('j1sa-recipient');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'j1sa-wcs-template-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('j1sa-wcs-template-ocs');
delete_site_option('j1sa-wcs-template-ocs');

// Delete Transients
delete_transient('j1sa-woocommerce_balance');
delete_site_transient('j1sa-woocommerce_balance');

