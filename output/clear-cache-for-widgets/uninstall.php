<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_ccfm_style_timestamp_theme');
delete_site_option('_ccfm_style_timestamp_theme');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_ccfm_style_timestamp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ccfm_options');
delete_site_option('ccfm_options');
delete_option('_ccfm_stats');
delete_site_option('_ccfm_stats');

// Delete Transients
delete_transient('ccfm_hosting_notice');
delete_site_transient('ccfm_hosting_notice');
delete_transient('ccfm_hosting_notice ');
delete_site_transient('ccfm_hosting_notice ');

