<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('image_optimizer_subscription_id');
delete_site_option('image_optimizer_subscription_id');
delete_option('image_optimizer_client_data');
delete_site_option('image_optimizer_client_data');
delete_option('image_optimizer_optimization_stats');
delete_site_option('image_optimizer_optimization_stats');
delete_option('elementor_connect_site_key');
delete_site_option('elementor_connect_site_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%welcome_screen_completed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%dismiss_connect_alert' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%editor_update_notification_dismissed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('elementor_image_optimization_campaign');
delete_site_transient('elementor_image_optimization_campaign');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

