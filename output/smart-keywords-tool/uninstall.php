<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wb_skt_ver');
delete_site_option('wb_skt_ver');
delete_option('wb_skt_baidu_app_error');
delete_site_option('wb_skt_baidu_app_error');
delete_option('wb_skt_baidu_app_token');
delete_site_option('wb_skt_baidu_app_token');
delete_option('wb_skt_api_error');
delete_site_option('wb_skt_api_error');
delete_option('wb_skt_kws');
delete_site_option('wb_skt_kws');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%ver' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wb_skt_cnf_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wb_skt_promote');
delete_site_option('wb_skt_promote');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

