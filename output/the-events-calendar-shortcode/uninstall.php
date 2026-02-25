<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tecs_activation_redirect');
delete_site_option('tecs_activation_redirect');
delete_option('ecs-show-link');
delete_site_option('ecs-show-link');
delete_option('ecs_activation_date');
delete_site_option('ecs_activation_date');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wisdom_deactivation_reason_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wisdom_deactivation_details_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wisdom_last_track_time');
delete_site_option('wisdom_last_track_time');
delete_option('wisdom_allow_tracking');
delete_site_option('wisdom_allow_tracking');
delete_option('wisdom_notification_times');
delete_site_option('wisdom_notification_times');
delete_option('wisdom_block_notice');
delete_site_option('wisdom_block_notice');
delete_option('wisdom_collect_email');
delete_site_option('wisdom_collect_email');
delete_option('wisdom_admin_emails');
delete_site_option('wisdom_admin_emails');

// Delete Transients
delete_transient('tecs_activation_redirect');
delete_site_transient('tecs_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('put_do_weekly_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tribe_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tribe_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tribe_featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tribe_featured' ) );

