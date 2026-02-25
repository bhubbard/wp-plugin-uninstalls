<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('logify_wp_object_subtypes_set');
delete_site_option('logify_wp_object_subtypes_set');
delete_option('logify_wp_enable_notes');
delete_site_option('logify_wp_enable_notes');
delete_option('logify_wp_db_version');
delete_site_option('logify_wp_db_version');
delete_option('logify_wp_delete_on_uninstall');
delete_site_option('logify_wp_delete_on_uninstall');
delete_option('logify_wp_roles_to_track');
delete_site_option('logify_wp_roles_to_track');
delete_option('logify_wp_roles_with_access');
delete_site_option('logify_wp_roles_with_access');
delete_option('logify_wp_users_with_access');
delete_site_option('logify_wp_users_with_access');
delete_option('logify_wp_show_in_admin_bar');
delete_site_option('logify_wp_show_in_admin_bar');
delete_option('logify_wp_keep_period_quantity');
delete_site_option('logify_wp_keep_period_quantity');
delete_option('logify_wp_keep_period_units');
delete_site_option('logify_wp_keep_period_units');
delete_option('logify_wp_keep_period_errors');
delete_site_option('logify_wp_keep_period_errors');
delete_option('logify_wp_php_error_types');
delete_site_option('logify_wp_php_error_types');
delete_option('logify_wp_comment_tracking');
delete_site_option('logify_wp_comment_tracking');
delete_option('logify_wp_capture_start_time');
delete_site_option('logify_wp_capture_start_time');
delete_option('logify_wp_plugin_versions');
delete_site_option('logify_wp_plugin_versions');
delete_option('logify_wp_theme_versions');
delete_site_option('logify_wp_theme_versions');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('logify_wp_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_trash_meta_comments_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_trash_meta_comments_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_trash_meta_comments_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_trash_meta_comments_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

