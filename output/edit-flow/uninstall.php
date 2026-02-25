<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('edit_flow_calendar_enabled');
delete_site_option('edit_flow_calendar_enabled');
delete_option('edit_flow_status_dropdown_visible');
delete_site_option('edit_flow_status_dropdown_visible');
delete_option('edit_flow_custom_status_default_status');
delete_site_option('edit_flow_custom_status_default_status');
delete_option('edit_flow_dashboard_widgets_enabled');
delete_site_option('edit_flow_dashboard_widgets_enabled');
delete_option('edit_flow_post_status_widget_enabled');
delete_site_option('edit_flow_post_status_widget_enabled');
delete_option('edit_flow_myposts_widget_enabled');
delete_site_option('edit_flow_myposts_widget_enabled');
delete_option('edit_flow_quickpitch_widget_enabled');
delete_site_option('edit_flow_quickpitch_widget_enabled');
delete_option('edit_flow_notifications_enabled');
delete_site_option('edit_flow_notifications_enabled');
delete_option('edit_flow_always_notify_admin');
delete_site_option('edit_flow_always_notify_admin');
delete_option('edit_flow_story_budget_enabled');
delete_site_option('edit_flow_story_budget_enabled');

// Clear Cron Jobs
wp_clear_scheduled_hook('ef_send_scheduled_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'notification_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'notification_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'notification_list' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'notification_list' ) );

