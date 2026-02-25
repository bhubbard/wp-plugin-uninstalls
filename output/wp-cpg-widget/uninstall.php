<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_cpg_plugin_db_default');
delete_site_option('wp_cpg_plugin_db_default');
delete_option('wp_cpg_plugin_options');
delete_site_option('wp_cpg_plugin_options');
delete_option('wp_cpg_widget_options');
delete_site_option('wp_cpg_widget_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_cpg_plugin_db_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

