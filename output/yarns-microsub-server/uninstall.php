<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yarns_storage_period');
delete_site_option('yarns_storage_period');
delete_option('yarns_show_debug');
delete_site_option('yarns_show_debug');
delete_option('debug_log');
delete_site_option('debug_log');
delete_option('yarns_channels');
delete_site_option('yarns_channels');
delete_option('yarns_poll_log');
delete_site_option('yarns_poll_log');
delete_option('iw_single_author');
delete_site_option('iw_single_author');
delete_option('iw_default_author');
delete_site_option('iw_default_author');

// Clear Cron Jobs
wp_clear_scheduled_hook('yarns_microsub_server_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yarns_microsub_json' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yarns_microsub_json' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yarns_microsub_json' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yarns_microsub_json' ) );

