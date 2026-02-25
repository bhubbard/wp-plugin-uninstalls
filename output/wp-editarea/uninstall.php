<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_editarea_enable');
delete_site_option('wp_editarea_enable');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wp_editarea_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp_editarea_start_highlight');
delete_site_option('wp_editarea_start_highlight');
delete_option('wp_editarea_allow_toggle');
delete_site_option('wp_editarea_allow_toggle');
delete_option('wp_editarea_word_wrap');
delete_site_option('wp_editarea_word_wrap');
delete_option('wp_editarea_language');
delete_site_option('wp_editarea_language');
delete_option('wp_editarea_display');
delete_site_option('wp_editarea_display');

