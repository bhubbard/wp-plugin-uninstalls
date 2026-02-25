<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smailyforwp_api_option');
delete_site_option('smailyforwp_api_option');
delete_option('smailyforwp_form_option');
delete_site_option('smailyforwp_form_option');
delete_option('widget_smaily_subscription_widget');
delete_site_option('widget_smaily_subscription_widget');
delete_option('smailyforwp_db_version');
delete_site_option('smailyforwp_db_version');

// Delete Transients
delete_transient('smailyforwp_plugin_updated');
delete_site_transient('smailyforwp_plugin_updated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smaily_for_wp_deprecation_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smaily_for_wp_deprecation_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smaily_for_wp_deprecation_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smaily_for_wp_deprecation_notice_dismissed' ) );

