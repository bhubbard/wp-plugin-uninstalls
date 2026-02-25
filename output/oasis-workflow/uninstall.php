<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oasiswf_email_settings');
delete_site_option('oasiswf_email_settings');
delete_option('oasiswf_custom_workflow_terminology');
delete_site_option('oasiswf_custom_workflow_terminology');
delete_option('oasiswf_priority_setting');
delete_site_option('oasiswf_priority_setting');
delete_option('oasiswf_default_due_days');
delete_site_option('oasiswf_default_due_days');
delete_option('oasiswf_reminder_days');
delete_site_option('oasiswf_reminder_days');
delete_option('oasiswf_reminder_days_after');
delete_site_option('oasiswf_reminder_days_after');
delete_option('oasiswf_activate_workflow');
delete_site_option('oasiswf_activate_workflow');
delete_option('oasiswf_show_wfsettings_on_post_types');
delete_site_option('oasiswf_show_wfsettings_on_post_types');
delete_option('oasiswf_activate_revision_process');
delete_site_option('oasiswf_activate_revision_process');
delete_option('oasiswf_review_notice');
delete_site_option('oasiswf_review_notice');
delete_option('oasiswf_review_rating_interval');
delete_site_option('oasiswf_review_rating_interval');
delete_option('oasiswf_workflow_completed_post_count');
delete_site_option('oasiswf_workflow_completed_post_count');
delete_option('oasiswf_publish_date_setting');
delete_site_option('oasiswf_publish_date_setting');
delete_option('oasiswf_show_upgrade_notice');
delete_site_option('oasiswf_show_upgrade_notice');
delete_option('oasiswf_path');
delete_site_option('oasiswf_path');
delete_option('oasiswf_placeholders');
delete_site_option('oasiswf_placeholders');
delete_option('oasiswf_status');
delete_site_option('oasiswf_status');
delete_option('oasiswf_process');
delete_site_option('oasiswf_process');
delete_option('oasiswf_info');
delete_site_option('oasiswf_info');
delete_option('oasiswf_skip_workflow_roles');
delete_site_option('oasiswf_skip_workflow_roles');
delete_option('oasiswf_hide_workflow_graphic');
delete_site_option('oasiswf_hide_workflow_graphic');
delete_option('oasiswf_view_other_users_inbox_roles');
delete_site_option('oasiswf_view_other_users_inbox_roles');
delete_option('oasiswf_abort_workflow_roles');
delete_site_option('oasiswf_abort_workflow_roles');
delete_option('oasiswf_review_process_setting');
delete_site_option('oasiswf_review_process_setting');
delete_option('oasiswf_roles_can_bulk_approval');
delete_site_option('oasiswf_roles_can_bulk_approval');

// Delete Transients
delete_transient('ow-cache-active-workflows');
delete_site_transient('ow-cache-active-workflows');
delete_transient('owf_activation_redirect');
delete_site_transient('owf_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('oasiswf_email_schedule');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_oasis_is_in_workflow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_oasis_is_in_workflow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_oasis_is_in_workflow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_oasis_is_in_workflow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_oasis_task_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_oasis_task_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_oasis_task_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_oasis_task_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_oasis_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_oasis_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_oasis_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_oasis_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_oasis_current_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_oasis_current_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_oasis_current_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_oasis_current_revision' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

