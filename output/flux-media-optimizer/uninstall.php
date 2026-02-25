<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('flux_media_optimizer_db_version');
delete_site_option('flux_media_optimizer_db_version');
delete_option('flux_media_optimizer_options');
delete_site_option('flux_media_optimizer_options');
delete_option('flux-plugins_common_options');
delete_site_option('flux-plugins_common_options');

// Delete Transients
delete_transient('flux_media_optimizer_notices');
delete_site_transient('flux_media_optimizer_notices');
delete_transient('flux_media_optimizer_activation_redirect');
delete_site_transient('flux_media_optimizer_activation_redirect');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('flux_media_optimizer_retry_failed_jobs');
wp_clear_scheduled_hook('flux_media_optimizer_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );

