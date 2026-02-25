<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jal_db_version');
delete_site_option('jal_db_version');
delete_option('dsubscribers_unsubscribed_msg');
delete_site_option('dsubscribers_unsubscribed_msg');
delete_option('dsubscribers_dont_exists_msg');
delete_site_option('dsubscribers_dont_exists_msg');
delete_option('dsubscribers_exists_msg');
delete_site_option('dsubscribers_exists_msg');
delete_option('dsubscribers_send_checkbox');
delete_site_option('dsubscribers_send_checkbox');
delete_option('dsubscribers_message_block');
delete_site_option('dsubscribers_message_block');
delete_option('dsubscribers_subscribed_msg');
delete_site_option('dsubscribers_subscribed_msg');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

