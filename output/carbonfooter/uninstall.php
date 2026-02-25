<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('carbonfooter_greenhost');
delete_site_option('carbonfooter_greenhost');
delete_option('carbonfooter_last_processed');
delete_site_option('carbonfooter_last_processed');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('carbonfooter_widget_background_color');
delete_site_option('carbonfooter_widget_background_color');
delete_option('carbonfooter_widget_text_color');
delete_site_option('carbonfooter_widget_text_color');
delete_option('carbonfooter_display_setting');
delete_site_option('carbonfooter_display_setting');
delete_option('carbonfooter_widget_style');
delete_site_option('carbonfooter_widget_style');
delete_option('carbonfooter_average_emissions');
delete_site_option('carbonfooter_average_emissions');

// Delete Transients
delete_transient('carbonfooter_activation_redirect');
delete_site_transient('carbonfooter_activation_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_carbonfooter_processing_%', '_site_transient_carbonfooter_processing_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('carbonfooter_process_emissions');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_carbon_emissions_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_carbon_emissions_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_carbon_emissions_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_carbon_emissions_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_carbon_emissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_carbon_emissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_carbon_emissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_carbon_emissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_carbon_resources' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_carbon_resources' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_carbon_resources' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_carbon_resources' ) );

