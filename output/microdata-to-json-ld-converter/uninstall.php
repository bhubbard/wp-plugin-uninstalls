<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdtj_remove_microdata');
delete_site_option('mdtj_remove_microdata');
delete_option('mdtj_regenerate_on_update');
delete_site_option('mdtj_regenerate_on_update');
delete_option('mdtj_create_json');
delete_site_option('mdtj_create_json');
delete_option('mdtj_scheduler_settings');
delete_site_option('mdtj_scheduler_settings');
delete_option('mdtj_last_scheduled_rebuild_log');
delete_site_option('mdtj_last_scheduled_rebuild_log');

// Delete Transients
delete_transient('mdtj_rebuild_queue');
delete_site_transient('mdtj_rebuild_queue');

// Clear Cron Jobs
wp_clear_scheduled_hook('mdtj_cron_rebuild_initiator');
wp_clear_scheduled_hook('mdtj_cron_rebuild_worker');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mdtj_json_ld' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mdtj_json_ld' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mdtj_json_ld' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mdtj_json_ld' ) );

