<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enlighter-customizer');
delete_site_option('enlighter-customizer');
delete_option('enlighter-cache-hash');
delete_site_option('enlighter-cache-hash');
delete_option('enlighter-activation-redirect');
delete_site_option('enlighter-activation-redirect');
delete_option('enlighter-upgrade');
delete_site_option('enlighter-upgrade');
delete_option('enlighter-version');
delete_site_option('enlighter-version');
delete_option('enlighter-options');
delete_site_option('enlighter-options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'enlighter-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('enlighter_userthemes');
delete_site_transient('enlighter_userthemes');

