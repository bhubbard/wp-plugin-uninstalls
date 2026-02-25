<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grl_recaptcha_version');
delete_site_option('grl_recaptcha_version');
delete_option('grl_site_key');
delete_site_option('grl_site_key');
delete_option('grl_theme');
delete_site_option('grl_theme');
delete_option('grl_secret_key');
delete_site_option('grl_secret_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'grl_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

