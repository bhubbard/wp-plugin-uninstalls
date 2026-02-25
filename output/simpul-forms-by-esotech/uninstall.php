<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailer');
delete_site_option('mailer');
delete_option('smtp_host');
delete_site_option('smtp_host');
delete_option('mail_set_return_path');
delete_site_option('mail_set_return_path');
delete_option('smtp_ssl');
delete_site_option('smtp_ssl');
delete_option('smtp_port');
delete_site_option('smtp_port');
delete_option('smtp_auth');
delete_site_option('smtp_auth');
delete_option('smtp_user');
delete_site_option('smtp_user');
delete_option('smtp_pass');
delete_site_option('smtp_pass');
delete_option('mail_from');
delete_site_option('mail_from');
delete_option('mail_from_name');
delete_site_option('mail_from_name');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%fields' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%number_of_fields' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%thank_you' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

