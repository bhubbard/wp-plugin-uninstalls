<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_raffle_setting_paypal');
delete_site_option('wp_raffle_setting_paypal');
delete_option('wp_raffle_setting_tickets');
delete_site_option('wp_raffle_setting_tickets');
delete_option('wp_raffle_setting_users');
delete_site_option('wp_raffle_setting_users');
delete_option('wp_raffle_setting_events');
delete_site_option('wp_raffle_setting_events');
delete_option('wp_raffle_setting_prizes');
delete_site_option('wp_raffle_setting_prizes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_raffle_setting_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

