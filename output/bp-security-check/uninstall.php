<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bp_security_check_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bp_security_check_type');
delete_site_option('bp_security_check_type');
delete_option('bp_security_check_recaptcha_site_key');
delete_site_option('bp_security_check_recaptcha_site_key');
delete_option('bp_security_check_recaptcha_secret_key');
delete_site_option('bp_security_check_recaptcha_secret_key');

