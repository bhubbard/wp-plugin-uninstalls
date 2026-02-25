<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mrstar_show_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mrstar_show_today');
delete_site_option('mrstar_show_today');
delete_option('mrstar_show_yesterday');
delete_site_option('mrstar_show_yesterday');
delete_option('mrstar_show_last_7_days');
delete_site_option('mrstar_show_last_7_days');
delete_option('mrstar_show_last_30_days');
delete_site_option('mrstar_show_last_30_days');
delete_option('mrstar_show_this_month');
delete_site_option('mrstar_show_this_month');
delete_option('mrstar_show_this_year');
delete_site_option('mrstar_show_this_year');
delete_option('mrstar_show_total');
delete_site_option('mrstar_show_total');

