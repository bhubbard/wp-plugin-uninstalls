<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%oauth_client_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%oauth_client_secret' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%allow_passwords' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%pusher_app_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%pusher_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%pusher_secret' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%pusher_cluster' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('meveto_pusher_key');
delete_site_option('meveto_pusher_key');
delete_option('meveto_pusher_cluster');
delete_site_option('meveto_pusher_cluster');
delete_option('meveto_oauth_client_id');
delete_site_option('meveto_oauth_client_id');
delete_option('meveto_oauth_client_secret');
delete_site_option('meveto_oauth_client_secret');
delete_option('meveto_allow_passwords');
delete_site_option('meveto_allow_passwords');
delete_option('meveto_pusher_app_id');
delete_site_option('meveto_pusher_app_id');
delete_option('meveto_pusher_secret');
delete_site_option('meveto_pusher_secret');
delete_option('meveto_connect_page');
delete_site_option('meveto_connect_page');
delete_option('meveto_login_with_meveto_page');
delete_site_option('meveto_login_with_meveto_page');
delete_option('meveto_oauth_scope');
delete_site_option('meveto_oauth_scope');
delete_option('meveto_oauth_authorize_url');
delete_site_option('meveto_oauth_authorize_url');

