<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_fluent_last_m_run');
delete_site_option('_fluent_last_m_run');
delete_option('_fs_migrate_awesome_support');
delete_site_option('_fs_migrate_awesome_support');
delete_option('_fs_migrate_freshdesk');
delete_site_option('_fs_migrate_freshdesk');
delete_option('_fs_migrate_helpscout');
delete_site_option('_fs_migrate_helpscout');
delete_option('_fs_migrate_js_helpdesk');
delete_site_option('_fs_migrate_js_helpdesk');
delete_option('_fs_migrate_support_candy');
delete_site_option('_fs_migrate_support_candy');
delete_option('_fs_migrate_zendesk');
delete_site_option('_fs_migrate_zendesk');
delete_option('siteUrl');
delete_site_option('siteUrl');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('fluent_support_hourly_tasks');
wp_clear_scheduled_hook('fluent_support_daily_tasks');
wp_clear_scheduled_hook('fluent_support_weekly_tasks');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

