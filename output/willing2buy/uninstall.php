<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sp_suggest_subject');
delete_site_option('sp_suggest_subject');
delete_option('sp_suggest_message');
delete_site_option('sp_suggest_message');
delete_option('sp_suggest_status');
delete_site_option('sp_suggest_status');
delete_option('sp_cron_event');
delete_site_option('sp_cron_event');
delete_option('sp_custom_time');
delete_site_option('sp_custom_time');
delete_option('suggest_subject');
delete_site_option('suggest_subject');

// Clear Cron Jobs
wp_clear_scheduled_hook('mycronjob');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_regular_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_regular_price' ) );

