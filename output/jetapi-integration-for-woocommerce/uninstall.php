<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetapi_settings');
delete_site_option('jetapi_settings');
delete_option('jeti_settings');
delete_site_option('jeti_settings');
delete_option('jeti_bearer_token');
delete_site_option('jeti_bearer_token');
delete_option('jeti_authenticated');
delete_site_option('jeti_authenticated');
delete_option('jeti_campaigns');
delete_site_option('jeti_campaigns');
delete_option('jetapi_sender_name');
delete_site_option('jetapi_sender_name');
delete_option('jeti_bulk_message_queue');
delete_site_option('jeti_bulk_message_queue');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('jeti_activation_notice');
delete_site_option('jeti_activation_notice');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

// Clear Cron Jobs
wp_clear_scheduled_hook('jeti_process_bulk_queue');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_phone' ) );

