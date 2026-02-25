<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wpcoder_enable_debug_log');
delete_site_option('_wpcoder_enable_debug_log');
delete_option('_wpcoder_enable_php');
delete_site_option('_wpcoder_enable_php');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wow_license_key_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_wp_coder_snippets');
delete_site_option('_wp_coder_snippets');
delete_option('_wp_coder_tools');
delete_site_option('_wp_coder_tools');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('wp_coder_admin_error_php_notice');
delete_site_transient('wp_coder_admin_error_php_notice');

