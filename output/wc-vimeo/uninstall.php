<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_vimeo_cron_interval');
delete_site_option('wc_settings_vimeo_cron_interval');
delete_option('wc_settings_vimeo_transient_duration');
delete_site_option('wc_settings_vimeo_transient_duration');
delete_option('wc_settings_vimeo_client_id');
delete_site_option('wc_settings_vimeo_client_id');
delete_option('wc_settings_vimeo_client_secret');
delete_site_option('wc_settings_vimeo_client_secret');
delete_option('wc_settings_vimeo_access_token');
delete_site_option('wc_settings_vimeo_access_token');

// Delete Transients
delete_transient('wc_vimeo_videos_main_transient');
delete_site_transient('wc_vimeo_videos_main_transient');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_vimeo_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wc_vimeo_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wc_vimeo_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wc_vimeo_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wc_vimeo_%' ) );

