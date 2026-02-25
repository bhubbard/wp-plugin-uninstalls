<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ns_cloner_finish_queries');
delete_site_option('ns_cloner_finish_queries');
delete_option('ns_cloner_exited');
delete_site_option('ns_cloner_exited');
delete_option('ns-media-source-site-url');
delete_site_option('ns-media-source-site-url');
delete_option('ns_cloner_saved_request');
delete_site_option('ns_cloner_saved_request');
delete_option('ns_cloner_installed_version');
delete_site_option('ns_cloner_installed_version');
delete_option('illegal_names');
delete_site_option('illegal_names');
delete_option('registration');
delete_site_option('registration');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_primary_keys' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ns_cloner_default_template');
delete_site_option('ns_cloner_default_template');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('ns_cloner_cron');

