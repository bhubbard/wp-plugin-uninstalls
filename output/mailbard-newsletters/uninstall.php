<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wysija_import_fields');
delete_site_option('wysija_import_fields');
delete_option('widget_wysija');
delete_site_option('widget_wysija');
delete_option('wysijey');
delete_site_option('wysijey');
delete_option('wysija_log');
delete_site_option('wysija_log');
delete_option('wysija_msg');
delete_site_option('wysija_msg');
delete_option('wysija_queries');
delete_site_option('wysija_queries');
delete_option('wysija_queries_errors');
delete_site_option('wysija_queries_errors');
delete_option('wysicheck');
delete_site_option('wysicheck');
delete_option('wysija_last_scheduled_check');
delete_site_option('wysija_last_scheduled_check');
delete_option('wysija_post_type_updated');
delete_site_option('wysija_post_type_updated');
delete_option('wysija_post_type_created');
delete_site_option('wysija_post_type_created');
delete_option('wysija');
delete_site_option('wysija');
delete_option('wysija_schedules');
delete_site_option('wysija_schedules');
delete_option('wysija_last_php_cron_call');
delete_site_option('wysija_last_php_cron_call');
delete_option('ms_wysija_bounce_cron');
delete_site_option('ms_wysija_bounce_cron');
delete_option('ms_wysija_sending_cron');
delete_site_option('ms_wysija_sending_cron');
delete_option('wysija_dismiss_update_notice');
delete_site_option('wysija_dismiss_update_notice');
delete_option('wysija_check_pn');
delete_site_option('wysija_check_pn');
delete_option('wysija_bounce_being_recorded');
delete_site_option('wysija_bounce_being_recorded');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('installation_step');
delete_site_option('installation_step');
delete_option('wysija_reinstall');
delete_site_option('wysija_reinstall');
delete_option('ms_wysija');
delete_site_option('ms_wysija');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ms_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('registration');
delete_site_option('registration');

// Clear Cron Jobs
wp_clear_scheduled_hook('wysija_cron_queue');
wp_clear_scheduled_hook('wysija_cron_bounce');
wp_clear_scheduled_hook('wysija_cron_daily');
wp_clear_scheduled_hook('wysija_cron_weekly');
wp_clear_scheduled_hook('wysija_cron_monthly');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wysija_pref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wysija_pref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wysija_pref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wysija_pref' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wysija_comment_subscribe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wysija_comment_subscribe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wysija_comment_subscribe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wysija_comment_subscribe' ) );

