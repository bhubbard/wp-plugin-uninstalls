<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'edd_api_request_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wppm_garbage_collection_time');
delete_site_option('wppm_garbage_collection_time');
delete_option('wppm-ap-modal');
delete_site_option('wppm-ap-modal');
delete_option('wppm-ap-settings');
delete_site_option('wppm-ap-settings');
delete_option('wppm_en_from_name');
delete_site_option('wppm_en_from_name');
delete_option('wppm_en_from_email');
delete_site_option('wppm_en_from_email');
delete_option('wppm_en_ignore_emails');
delete_site_option('wppm_en_ignore_emails');
delete_option('wppm_default_email_notification_to_current_user');
delete_site_option('wppm_default_email_notification_to_current_user');
delete_option('wppm_email_notification');
delete_site_option('wppm_email_notification');
delete_option('wppm_user_role');
delete_site_option('wppm_user_role');
delete_option('wppm_project_time');
delete_site_option('wppm_project_time');
delete_option('wppm_rich_text_editor');
delete_site_option('wppm_rich_text_editor');
delete_option('wppm_toolbar_actions');
delete_site_option('wppm_toolbar_actions');
delete_option('wppm-ap-task-list');
delete_site_option('wppm-ap-task-list');
delete_option('wppm_task_time');
delete_site_option('wppm_task_time');
delete_option('wppm-ap-grid-view');
delete_site_option('wppm-ap-grid-view');
delete_option('wppm_date_setting');
delete_site_option('wppm_date_setting');
delete_option('wppm_hide_completed_status_task');
delete_site_option('wppm_hide_completed_status_task');
delete_option('wppm_hide_task_statuses_from_frontend');
delete_site_option('wppm_hide_task_statuses_from_frontend');
delete_option('wppm_display_time_duration_task');
delete_site_option('wppm_display_time_duration_task');
delete_option('wppm-ap-project-list');
delete_site_option('wppm-ap-project-list');
delete_option('wppm_display_time_duration_project');
delete_site_option('wppm_display_time_duration_project');
delete_option('wppm_hide_completed_status_proj');
delete_site_option('wppm_hide_completed_status_proj');
delete_option('wppm_hide_proj_statuses_from_frontend');
delete_site_option('wppm_hide_proj_statuses_from_frontend');
delete_option('wppm_default_project_date');
delete_site_option('wppm_default_project_date');
delete_option('wppm_public_projects_permission');
delete_site_option('wppm_public_projects_permission');
delete_option('wppm-ap-individual-project');
delete_site_option('wppm-ap-individual-project');
delete_option('wppm_tinymce_visibility_open_project');
delete_site_option('wppm_tinymce_visibility_open_project');
delete_option('wppm_proj_hide_comment_section');
delete_site_option('wppm_proj_hide_comment_section');
delete_option('wppm-ap-individual-task');
delete_site_option('wppm-ap-individual-task');
delete_option('wppm_allow_coworkers_create_task');
delete_site_option('wppm_allow_coworkers_create_task');
delete_option('wppm_allow_coworkers_add_checklist');
delete_site_option('wppm_allow_coworkers_add_checklist');
delete_option('wppm_allow_coworkers_assign_users');
delete_site_option('wppm_allow_coworkers_assign_users');
delete_option('wppm_allow_coworkers_change_status');
delete_site_option('wppm_allow_coworkers_change_status');
delete_option('wppm_default_task_list_view');
delete_site_option('wppm_default_task_list_view');
delete_option('wppm_default_task_date');
delete_site_option('wppm_default_task_date');
delete_option('wppm_default_edit_tasks_permission');
delete_site_option('wppm_default_edit_tasks_permission');
delete_option('wppm_default_project_status');
delete_site_option('wppm_default_project_status');
delete_option('wppm_default_task_status');
delete_site_option('wppm_default_task_status');
delete_option('wppm_tinymce_visibility_open_task');
delete_site_option('wppm_tinymce_visibility_open_task');
delete_option('wppm_task_hide_comment_section');
delete_site_option('wppm_task_hide_comment_section');
delete_option('wppm-page-settings');
delete_site_option('wppm-page-settings');
delete_option('wppm_print_settings');
delete_site_option('wppm_print_settings');
delete_option('wppm_default_duplicate_project_email_notification');
delete_site_option('wppm_default_duplicate_project_email_notification');
delete_option('wppm_version');
delete_site_option('wppm_version');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('wppm_cron_one_minute');
wp_clear_scheduled_hook('wppm_cron_five_minute');
wp_clear_scheduled_hook('wppm_cron_daily');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppm_current_filter_result' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppm_current_filter_result' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppm_current_filter_result' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppm_current_filter_result' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wppm_capability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wppm_capability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wppm_capability' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wppm_capability' ) );

