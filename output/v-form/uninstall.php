<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vpsuform_secret_key');
delete_site_option('vpsuform_secret_key');
delete_option('vform_api_key');
delete_site_option('vform_api_key');
delete_option('vform_plugin_version');
delete_site_option('vform_plugin_version');
delete_option('vpsuform_review_count');
delete_site_option('vpsuform_review_count');
delete_option('vpsuform_review_dismissed');
delete_site_option('vpsuform_review_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('vform_send_scheduled_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_vform_selected_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_vform_selected_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_vform_selected_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_vform_selected_id' ) );

