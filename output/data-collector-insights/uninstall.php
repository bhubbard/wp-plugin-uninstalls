<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_installed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dci_plugin_last_processed_id');
delete_site_option('dci_plugin_last_processed_id');
delete_option('dci_query_templates');
delete_site_option('dci_query_templates');
delete_option('dci_themes_last_processed_id');
delete_site_option('dci_themes_last_processed_id');
delete_option('dci_system_settings');
delete_site_option('dci_system_settings');
delete_option('dci_insights_installed');
delete_site_option('dci_insights_installed');
delete_option('dci_insights_version');
delete_site_option('dci_insights_version');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dismissed_notice_%', '_site_transient_dismissed_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('dci_feedback_data');
delete_site_transient('dci_feedback_data');
delete_transient('dci_product_feedback_data');
delete_site_transient('dci_product_feedback_data');
delete_transient('dci_error_message');
delete_site_transient('dci_error_message');

