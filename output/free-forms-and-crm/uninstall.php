<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbs_options');
delete_site_option('wbs_options');
delete_option('_transient_timeout_wbs_token');
delete_site_option('_transient_timeout_wbs_token');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'free_forms_crm_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('wbs_app_token');
delete_site_transient('wbs_app_token');
delete_transient('wbs_token');
delete_site_transient('wbs_token');

