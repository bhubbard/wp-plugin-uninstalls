<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('better_payment_plugin_installed_fresh');
delete_site_option('better_payment_plugin_installed_fresh');
delete_option('better_payment_plugin_installed_time_fresh');
delete_site_option('better_payment_plugin_installed_time_fresh');
delete_option('better_payment_progress_bar_dismissed_expiry_date');
delete_site_option('better_payment_progress_bar_dismissed_expiry_date');
delete_option('better_payment_version');
delete_site_option('better_payment_version');
delete_option('better_payment_setup_wizard');
delete_site_option('better_payment_setup_wizard');
delete_option('better_payment_sale_info_dismissed');
delete_site_option('better_payment_sale_info_dismissed');
delete_option('better_payment_progress_bar_dismissed');
delete_site_option('better_payment_progress_bar_dismissed');
delete_option('better_payment_settings');
delete_site_option('better_payment_settings');
delete_option('better_payment_campaigns');
delete_site_option('better_payment_campaigns');
delete_option('better_payment_settings_opt_in');
delete_site_option('better_payment_settings_opt_in');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpins_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpins_allow_tracking');
delete_site_option('wpins_allow_tracking');
delete_option('wpins_last_track_time');
delete_site_option('wpins_last_track_time');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpins_block_notice');
delete_site_option('wpins_block_notice');
delete_option('bp_widget_usage_initial_scan_done');
delete_site_option('bp_widget_usage_initial_scan_done');
delete_option('better_payment_any_widget_used');
delete_site_option('better_payment_any_widget_used');

// Delete Transients
delete_transient('better_payment_import_transactions_success');
delete_site_transient('better_payment_import_transactions_success');
delete_transient('better_payment_import_transactions_error');
delete_site_transient('better_payment_import_transactions_error');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

