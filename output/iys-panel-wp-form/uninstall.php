<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('im4wp_flash_messages');
delete_site_option('im4wp_flash_messages');
delete_option('im4wp');
delete_site_option('im4wp');
delete_option('im4wp_lite_version');
delete_site_option('im4wp_lite_version');
delete_option('im4wp_version');
delete_site_option('im4wp_version');
delete_option('im4wp_default_form_id');
delete_site_option('im4wp_default_form_id');
delete_option('im4wp_form_stylesheets');
delete_site_option('im4wp_form_stylesheets');
delete_option('im4wp_groupings_map');
delete_site_option('im4wp_groupings_map');

// Delete Transients
delete_transient('im4wp_iyspanel_lists');
delete_site_transient('im4wp_iyspanel_lists');
delete_transient('im4wp_iyspanel_brands');
delete_site_transient('im4wp_iyspanel_brands');
delete_transient('im4wp_iyspanel_originators');
delete_site_transient('im4wp_iyspanel_originators');
delete_transient('im4wp_api_key_notice_dismissed');
delete_site_transient('im4wp_api_key_notice_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('im4wp_usage_tracking');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_im4wp_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_im4wp_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_im4wp_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_im4wp_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'text_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'text_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'text_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'text_%' ) );

