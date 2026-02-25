<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_chartjs_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_chartjs_adapter_date_fns_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_assets_mode' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('daextubch_options_version');
delete_site_option('daextubch_options_version');
delete_option('daextubch_database_version');
delete_site_option('daextubch_database_version');
delete_option('daextubch_assets_mode');
delete_site_option('daextubch_assets_mode');
delete_option('daextubch_chartjs_url');
delete_site_option('daextubch_chartjs_url');
delete_option('daextubch_chartjs_adapter_date_fns_url');
delete_site_option('daextubch_chartjs_adapter_date_fns_url');
delete_option('daextubch_verify_single_shortcode');
delete_site_option('daextubch_verify_single_shortcode');
delete_option('daextubch_max_execution_time');
delete_site_option('daextubch_max_execution_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_verify_single_shortcode' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('daextubch_max_execution_time_value');
delete_site_option('daextubch_max_execution_time_value');

