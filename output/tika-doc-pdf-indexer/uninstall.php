<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tdpi_java_location');
delete_site_option('tdpi_java_location');
delete_option('tdpi_tika_jar_location');
delete_site_option('tdpi_tika_jar_location');
delete_option('tika_wp_content');
delete_site_option('tika_wp_content');
delete_option('tdpi_supported_ext');
delete_site_option('tdpi_supported_ext');
delete_option('tdpi_index_attachments');
delete_site_option('tdpi_index_attachments');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tdpi_enable_tdpi_cpt');
delete_site_option('tdpi_enable_tdpi_cpt');

