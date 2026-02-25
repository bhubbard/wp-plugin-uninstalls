<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_gf_authentication_token_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_gf_addon_const_values');
delete_site_option('click5_gf_addon_const_values');
delete_option('click5_gf_addon_notifications');
delete_site_option('click5_gf_addon_notifications');
delete_option('click5_gf_addon_notifications_count_errors');
delete_site_option('click5_gf_addon_notifications_count_errors');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_gf_addon_form_enable_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_gf_addon_crm_fields_stored');
delete_site_option('click5_gf_addon_crm_fields_stored');
delete_option('posting_url');
delete_site_option('posting_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'form_enable_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_gf_addon_posting_url');
delete_site_option('click5_gf_addon_posting_url');

