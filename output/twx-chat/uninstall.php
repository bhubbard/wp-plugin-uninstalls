<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twx_chat_options');
delete_site_option('twx_chat_options');
delete_option('twx_chat_site_crawler_running');
delete_site_option('twx_chat_site_crawler_running');
delete_option('twx_chat_server_token');
delete_site_option('twx_chat_server_token');
delete_option('twx_chat_client_timezone');
delete_site_option('twx_chat_client_timezone');
delete_option('twx_chat_db_timezone');
delete_site_option('twx_chat_db_timezone');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('twx_chat_customer_plan');
delete_site_option('twx_chat_customer_plan');
delete_option('twx_chat_pending_language_files');
delete_site_option('twx_chat_pending_language_files');
delete_option('twx_chat_plugin_ver');
delete_site_option('twx_chat_plugin_ver');
delete_option('twx_chat_plugin_plan');
delete_site_option('twx_chat_plugin_plan');
delete_option('twx_chat_customer_valid');
delete_site_option('twx_chat_customer_valid');
delete_option('twx_chat_customer_valid_message');
delete_site_option('twx_chat_customer_valid_message');

// Clear Cron Jobs
wp_clear_scheduled_hook('twx_chat_cleanup_chatlog_event');
wp_clear_scheduled_hook('twx_chat_site_crawler_daily_event');
wp_clear_scheduled_hook('twx_chat_site_crawler_weekly_event');
wp_clear_scheduled_hook('twx_chat_reports_chatlog_summary_email_daily_event');
wp_clear_scheduled_hook('twx_chat_reports_chatlog_summary_email_weekly_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

