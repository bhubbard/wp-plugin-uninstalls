<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('websamurai_cp_auth_key');
delete_site_option('websamurai_cp_auth_key');
delete_option('websamurai_cp_site_id');
delete_site_option('websamurai_cp_site_id');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('websamurai_cp_connected_at');
delete_site_option('websamurai_cp_connected_at');
delete_option('websamurai_cp_user_data');
delete_site_option('websamurai_cp_user_data');
delete_option('websamurai_cp_user_refreshed_at');
delete_site_option('websamurai_cp_user_refreshed_at');
delete_option('websamurai_cp_site_synced_at');
delete_site_option('websamurai_cp_site_synced_at');

// Clear Cron Jobs
wp_clear_scheduled_hook('websamurai_daily_oauth_refresh');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

