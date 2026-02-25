<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%dashboard_subscribe' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ssing_date_format');
delete_site_option('ssing_date_format');
delete_option('ssing_dashboard_widget_flag');
delete_site_option('ssing_dashboard_widget_flag');
delete_option('ssign_notice');
delete_site_option('ssign_notice');
delete_option('swiftsign_pages');
delete_site_option('swiftsign_pages');

