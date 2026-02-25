<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('synaplan_wp_db_version');
delete_site_option('synaplan_wp_db_version');
delete_option('synaplan_wp_version');
delete_site_option('synaplan_wp_version');
delete_option('synaplan_wp_setup_completed');
delete_site_option('synaplan_wp_setup_completed');
delete_option('synaplan_wp_widget_config');
delete_site_option('synaplan_wp_widget_config');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'synaplan_wp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('synaplan_wp_verification_token');
delete_site_option('synaplan_wp_verification_token');
delete_option('synaplan_wp_api_key');
delete_site_option('synaplan_wp_api_key');
delete_option('synaplan_wp_user_id');
delete_site_option('synaplan_wp_user_id');
delete_option('synaplan_wp_wizard_data');
delete_site_option('synaplan_wp_wizard_data');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_synaplan_wizard_data_%', '_site_transient_synaplan_wizard_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('synaplan_wp_api_status');
delete_site_transient('synaplan_wp_api_status');
delete_transient('synaplan_wp_widget_preview');
delete_site_transient('synaplan_wp_widget_preview');

