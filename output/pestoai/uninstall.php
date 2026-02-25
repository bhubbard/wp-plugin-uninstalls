<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pestoai_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pestoai_console_url');
delete_site_option('pestoai_console_url');

// Delete Transients
delete_transient('pestoai_activation_notice');
delete_site_transient('pestoai_activation_notice');
delete_transient('pestoai_activation_fail_notice');
delete_site_transient('pestoai_activation_fail_notice');

