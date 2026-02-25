<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prontocookie_app_key');
delete_site_option('prontocookie_app_key');
delete_option('prontocookie_app_secret');
delete_site_option('prontocookie_app_secret');
delete_option('prc_disable_sslverify');
delete_site_option('prc_disable_sslverify');
delete_option('prc_site_configuration');
delete_site_option('prc_site_configuration');
delete_option('prntck_disable_sslverify');
delete_site_option('prntck_disable_sslverify');
delete_option('prntck_site_configuration');
delete_site_option('prntck_site_configuration');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-prntck-logger-settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

