<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcmpg_licence_index');
delete_site_option('wcmpg_licence_index');
delete_option('wcmpg_licence_key');
delete_site_option('wcmpg_licence_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('WCMPH_hide_notice');
delete_site_option('WCMPH_hide_notice');

