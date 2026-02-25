<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Shortcodes_Ultimate_Plugin_Not_Activated');
delete_site_option('Shortcodes_Ultimate_Plugin_Not_Activated');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('su/generator/popup');
delete_site_transient('su/generator/popup');
delete_transient('su/generator/settings/pdf');
delete_site_transient('su/generator/settings/pdf');

