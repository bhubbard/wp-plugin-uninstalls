<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uewm_columns');
delete_site_option('uewm_columns');
delete_option('uewm_use_custom_csv_settings');
delete_site_option('uewm_use_custom_csv_settings');
delete_option('uewm_field_separator');
delete_site_option('uewm_field_separator');
delete_option('uewm_text_qualifier');
delete_site_option('uewm_text_qualifier');
delete_option('uewm_custom_field_separator');
delete_site_option('uewm_custom_field_separator');
delete_option('uewm_custom_text_qualifier');
delete_site_option('uewm_custom_text_qualifier');
delete_option('uewm_roles');
delete_site_option('uewm_roles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_queue_flush_rewrite_rules' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

