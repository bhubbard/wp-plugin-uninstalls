<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpt_ys_master_act');
delete_site_option('wpt_ys_master_act');
delete_option('wpt_ys_num_days');
delete_site_option('wpt_ys_num_days');
delete_option('wpt_ys_display_user');
delete_site_option('wpt_ys_display_user');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpt_ys_display_hidden');
delete_site_option('wpt_ys_display_hidden');

