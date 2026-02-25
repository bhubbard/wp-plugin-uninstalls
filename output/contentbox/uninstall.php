<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contentbox_api_token');
delete_site_option('contentbox_api_token');
delete_option('contentbox_api_id');
delete_site_option('contentbox_api_id');
delete_option('contentbox_cat');
delete_site_option('contentbox_cat');
delete_option('contentbox_post_status');
delete_site_option('contentbox_post_status');
delete_option('contentbox_shedule_type');
delete_site_option('contentbox_shedule_type');
delete_option('contentbox_is_add_img');
delete_site_option('contentbox_is_add_img');

// Clear Cron Jobs
wp_clear_scheduled_hook('contentbox_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'contentbox_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'contentbox_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'contentbox_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'contentbox_id' ) );

