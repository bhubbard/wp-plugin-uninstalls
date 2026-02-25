<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Waymark_Settings');
delete_site_option('Waymark_Settings');
delete_option('waymark_activation_redirect');
delete_site_option('waymark_activation_redirect');
delete_option('Waymark_Settings_Backup');
delete_site_option('Waymark_Settings_Backup');
delete_option('Waymark_Version');
delete_site_option('Waymark_Version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'Waymark_Settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

