<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sgpm_popup_maker_api_option');
delete_site_option('sgpm_popup_maker_api_option');
delete_option('sgpm_popup_maker_dismiss_review_notice');
delete_site_option('sgpm_popup_maker_dismiss_review_notice');
delete_option('sgpm_popup_maker_activation_date');
delete_site_option('sgpm_popup_maker_activation_date');
delete_option('sgpm_popup_maker_notification_engine_source');
delete_site_option('sgpm_popup_maker_notification_engine_source');
delete_option('sgpm_popup_maker_dismissed_notifacions');
delete_site_option('sgpm_popup_maker_dismissed_notifacions');
delete_option('sgpm_popup_maker_user_roles');
delete_site_option('sgpm_popup_maker_user_roles');
delete_option('sgpm_popup_maker_custom_allowed_tags');
delete_site_option('sgpm_popup_maker_custom_allowed_tags');
delete_option('sgpm_popup_maker_custom_allowed_attrs');
delete_site_option('sgpm_popup_maker_custom_allowed_attrs');
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
delete_option('wisdom_collect_email');
delete_site_option('wisdom_collect_email');
delete_option('wisdom_admin_emails');
delete_site_option('wisdom_admin_emails');

// Clear Cron Jobs
wp_clear_scheduled_hook('sgpm_fetch_new_notifications');
wp_clear_scheduled_hook('sgpm_fetch_notifications');
wp_clear_scheduled_hook('put_do_weekly_action');

