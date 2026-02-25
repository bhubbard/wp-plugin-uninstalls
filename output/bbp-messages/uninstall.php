<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('bbpm_force_deactivate');
delete_site_option('bbpm_force_deactivate');
delete_option('bbpm_has_import_data_bbpmessages');
delete_site_option('bbpm_has_import_data_bbpmessages');
delete_option('bbpm_settings');
delete_site_option('bbpm_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('WP_Messages_weekly_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'bbpm_mute_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'bbpm_mute_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'bbpm_mute_notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'bbpm_mute_notifications' ) );

