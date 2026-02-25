<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zohomailwoo_client_id');
delete_site_option('zohomailwoo_client_id');
delete_option('zohomailwoo_client_secret');
delete_site_option('zohomailwoo_client_secret');
delete_option('zohomailwoo_refresh_token');
delete_site_option('zohomailwoo_refresh_token');
delete_option('zohomailwoo_access_token');
delete_site_option('zohomailwoo_access_token');
delete_option('zohomailwoo_domain_name');
delete_site_option('zohomailwoo_domain_name');
delete_option('zohomailwoo_timestamp');
delete_site_option('zohomailwoo_timestamp');
delete_option('zohomailwoo_mail_accid');
delete_site_option('zohomailwoo_mail_accid');
delete_option('zohomailwoo_from_email_id');
delete_site_option('zohomailwoo_from_email_id');
delete_option('zohomailwoo_from_name');
delete_site_option('zohomailwoo_from_name');
delete_option('zohomailwoo_is_configured');
delete_site_option('zohomailwoo_is_configured');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'zohomailwoo_from_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('zohomailwoo_from_General');
delete_site_option('zohomailwoo_from_General');

