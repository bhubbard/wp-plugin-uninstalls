<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'updatepress_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('updatepress_floating_widget');
delete_site_option('updatepress_floating_widget');
delete_option('updatepress_floating_widget_delay');
delete_site_option('updatepress_floating_widget_delay');
delete_option('updatepress_recent_days');
delete_site_option('updatepress_recent_days');
delete_option('updatepress_display_rule');
delete_site_option('updatepress_display_rule');
delete_option('updatepress_selected_pages');
delete_site_option('updatepress_selected_pages');
delete_option('updatepress_display_count');
delete_site_option('updatepress_display_count');
delete_option('updatepress_custom_count');
delete_site_option('updatepress_custom_count');
delete_option('updatepress_sort_order');
delete_site_option('updatepress_sort_order');
delete_option('updatepress_tag_enabled');
delete_site_option('updatepress_tag_enabled');
delete_option('updatepress_tag_text');
delete_site_option('updatepress_tag_text');
delete_option('updatepress_tag_color');
delete_site_option('updatepress_tag_color');
delete_option('updatepress_widget_position');
delete_site_option('updatepress_widget_position');
delete_option('updatepress_private_mode');
delete_site_option('updatepress_private_mode');
delete_option('updatepress_uninstall_data');
delete_site_option('updatepress_uninstall_data');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_count', '_site_transient_%_count' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('updatepress_daily_cleanup');
wp_clear_scheduled_hook('updatepress_weekly_maintenance');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tag_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tag_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tag_color' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tag_color' ) );

