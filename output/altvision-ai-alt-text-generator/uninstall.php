<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('altvision_settings');
delete_site_option('altvision_settings');
delete_option('altvision_license_status');
delete_site_option('altvision_license_status');
delete_option('altvision_license_key');
delete_site_option('altvision_license_key');
delete_option('altvision_license_error');
delete_site_option('altvision_license_error');

// Delete Transients
delete_transient('altvision_license_check');
delete_site_transient('altvision_license_check');
delete_transient('altvision_last_verify');
delete_site_transient('altvision_last_verify');

// Clear Cron Jobs
wp_clear_scheduled_hook('altvision_check_license');
wp_clear_scheduled_hook('altvision_daily_license_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'altvision_default_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'altvision_default_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'altvision_default_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'altvision_default_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

