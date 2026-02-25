<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssp_stats_version');
delete_site_option('ssp_stats_version');
delete_option('ssp_stats_show_crawler_update_notice');
delete_site_option('ssp_stats_show_crawler_update_notice');
delete_option('ssp_stats_db_version');
delete_site_option('ssp_stats_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ssp_version');
delete_site_option('ssp_version');

