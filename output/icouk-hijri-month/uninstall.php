<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icouk_hijri_month_version');
delete_site_option('icouk_hijri_month_version');
delete_option('icouk_hijri_month_activated');
delete_site_option('icouk_hijri_month_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('icouk_hijri_month_cache_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'icouk_hijri_month_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'icouk_hijri_month_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'icouk_hijri_month_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'icouk_hijri_month_settings' ) );

