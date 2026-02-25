<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ambriel_api_key_field');
delete_site_option('ambriel_api_key_field');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ambriel_wc_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ambriel_api_key');
delete_site_option('ambriel_api_key');
delete_option('ambriel_decline_message');
delete_site_option('ambriel_decline_message');

