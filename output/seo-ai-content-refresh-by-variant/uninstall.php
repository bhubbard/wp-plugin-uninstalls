<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scr_refresh_post_types');
delete_site_option('scr_refresh_post_types');
delete_option('scr_refresh_openai_key');
delete_site_option('scr_refresh_openai_key');
delete_option('scr_refresh_content_age');
delete_site_option('scr_refresh_content_age');
delete_option('scr_refresh_modification_level');
delete_site_option('scr_refresh_modification_level');
delete_option('scr_refresh_batch_size');
delete_site_option('scr_refresh_batch_size');
delete_option('scr_refresh_custom_prompt');
delete_site_option('scr_refresh_custom_prompt');

// Clear Cron Jobs
wp_clear_scheduled_hook('scr_refresh_process_batch');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'scr_refresh_last_edit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'scr_refresh_last_edit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'scr_refresh_last_edit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'scr_refresh_last_edit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'src_backup_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'src_backup_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'src_backup_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'src_backup_revision' ) );

