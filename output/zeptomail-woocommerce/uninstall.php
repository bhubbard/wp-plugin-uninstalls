<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zeptowoo_client_id');
delete_site_option('zeptowoo_client_id');
delete_option('zeptowoo_client_secret');
delete_site_option('zeptowoo_client_secret');
delete_option('zeptowoo_refresh_token');
delete_site_option('zeptowoo_refresh_token');
delete_option('zeptowoo_access_token');
delete_site_option('zeptowoo_access_token');
delete_option('zeptowoo_domain_name');
delete_site_option('zeptowoo_domain_name');
delete_option('zeptowoo_timestamp');
delete_site_option('zeptowoo_timestamp');
delete_option('zeptowoo_mail_agent');
delete_site_option('zeptowoo_mail_agent');
delete_option('zeptowoo_from_email_id');
delete_site_option('zeptowoo_from_email_id');
delete_option('zeptowoo_from_name');
delete_site_option('zeptowoo_from_name');
delete_option('zeptowoo_cc_email_id');
delete_site_option('zeptowoo_cc_email_id');
delete_option('zeptowoo_bcc_email_id');
delete_site_option('zeptowoo_bcc_email_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'zeptowoo_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

