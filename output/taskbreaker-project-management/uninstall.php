<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('task_breaker_tasks_table_version');
delete_site_option('task_breaker_tasks_table_version');
delete_option('task_breaker_comments_table_version');
delete_site_option('task_breaker_comments_table_version');
delete_option('bp-pages');
delete_site_option('bp-pages');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'task_breaker_project_group_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'task_breaker_project_group_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'task_breaker_project_group_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'task_breaker_project_group_id' ) );

