<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'redirect_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'session_lang_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('automatic_lang_redirection');
delete_site_option('automatic_lang_redirection');
delete_option('show_lang_warnings');
delete_site_option('show_lang_warnings');
delete_option('show_alternatives_box');
delete_site_option('show_alternatives_box');
delete_option('session_lang_redirection');
delete_site_option('session_lang_redirection');

