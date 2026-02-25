<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprev_disable_ssr');
delete_site_option('wprev_disable_ssr');
delete_option('wprev_mdata_off');
delete_site_option('wprev_mdata_off');
delete_option('wprev_best_rating');
delete_site_option('wprev_best_rating');
delete_option('wprev_ext_js');
delete_site_option('wprev_ext_js');
delete_option('wprev_sync_off');
delete_site_option('wprev_sync_off');
delete_option('wprev_site_id');
delete_site_option('wprev_site_id');
delete_option('wprev_replace');
delete_site_option('wprev_replace');
delete_option('wprev_debug');
delete_site_option('wprev_debug');
delete_option('wprev_active');
delete_site_option('wprev_active');
delete_option('wprev_api_key');
delete_site_option('wprev_api_key');
delete_option('wprev_version');
delete_site_option('wprev_version');
delete_option('_wprev_sync_modif');
delete_site_option('_wprev_sync_modif');
delete_option('_wprev_sync_lock');
delete_site_option('_wprev_sync_lock');
delete_option('wprev_last_id');
delete_site_option('wprev_last_id');
delete_option('wprev_last_modif');
delete_site_option('wprev_last_modif');
delete_option('wprev_last_modif_offset_id');
delete_site_option('wprev_last_modif_offset_id');
delete_option('wprev_last_modif_2');
delete_site_option('wprev_last_modif_2');

// Clear Cron Jobs
wp_clear_scheduled_hook('wprev_sync_modif');
wp_clear_scheduled_hook('wprev_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wprev_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wprev_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wprev_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wprev_id' ) );

