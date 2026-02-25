<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autopost_ai_do_activation_redirect');
delete_site_option('autopost_ai_do_activation_redirect');
delete_option('autopost_ai_show_deactivation_warning');
delete_site_option('autopost_ai_show_deactivation_warning');
delete_option('autopost_ai_remove_data_on_uninstall');
delete_site_option('autopost_ai_remove_data_on_uninstall');
delete_option('autopost_ai_api_key');
delete_site_option('autopost_ai_api_key');
delete_option('autopost_ai_post_settings');
delete_site_option('autopost_ai_post_settings');
delete_option('autopost_ai_prompt');
delete_site_option('autopost_ai_prompt');
delete_option('autopost_ai_last_post_created_at');
delete_site_option('autopost_ai_last_post_created_at');

// Clear Cron Jobs
wp_clear_scheduled_hook('autopost_ai_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_autopost_ai_queue_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_autopost_ai_queue_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_autopost_ai_queue_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_autopost_ai_queue_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

