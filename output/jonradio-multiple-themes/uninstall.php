<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jr_mt_settings');
delete_site_option('jr_mt_settings');
delete_option('jr_mt_internal_settings');
delete_site_option('jr_mt_internal_settings');
delete_option('jr_mt_all_themes');
delete_site_option('jr_mt_all_themes');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_tab', '_site_transient_%_tab' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

