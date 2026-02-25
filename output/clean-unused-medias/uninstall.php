<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lnjcm_medias_in_content_index');
delete_site_option('lnjcm_medias_in_content_index');
delete_option('lnjcm_medias_in_content_ids');
delete_site_option('lnjcm_medias_in_content_ids');
delete_option('lnjcm_medias_in_postmeta_ids');
delete_site_option('lnjcm_medias_in_postmeta_ids');
delete_option('lnjcm_medias_in_usermeta_ids');
delete_site_option('lnjcm_medias_in_usermeta_ids');
delete_option('lnjcm_medias_in_option_ids');
delete_site_option('lnjcm_medias_in_option_ids');
delete_option('lnjcm_medias_in_content_last_check');
delete_site_option('lnjcm_medias_in_content_last_check');
delete_option('lnjcm_medias_in_content_pause');
delete_site_option('lnjcm_medias_in_content_pause');
delete_option('lnjcm_medias_in_content_completed');
delete_site_option('lnjcm_medias_in_content_completed');
delete_option('lnjcm_medias_in_content_completed_date');
delete_site_option('lnjcm_medias_in_content_completed_date');
delete_option('lnjcm_medias_in_content_processing');
delete_site_option('lnjcm_medias_in_content_processing');

// Clear Cron Jobs
wp_clear_scheduled_hook('lnjcm_check_medias_in_content');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'lnjcm_used_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'lnjcm_used_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'lnjcm_used_in' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'lnjcm_used_in' ) );

