<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf_opt_in');
delete_site_option('cf_opt_in');
delete_option('cf_hide_editorial_column');
delete_site_option('cf_hide_editorial_column');
delete_option('cf_permissions');
delete_site_option('cf_permissions');
delete_option('cf_give_alert_message');
delete_site_option('cf_give_alert_message');
delete_option('cf_suggestion_mode_option_name');
delete_site_option('cf_suggestion_mode_option_name');
delete_option('cf_specific_post_categories_values');
delete_site_option('cf_specific_post_categories_values');
delete_option('cf_specific_post_types_values');
delete_site_option('cf_specific_post_types_values');
delete_option('cf_hide_floating_icons');
delete_site_option('cf_hide_floating_icons');
delete_option('cf_show_multicollab_sidebar');
delete_site_option('cf_show_multicollab_sidebar');
delete_option('cf_welcome_dashboard_completed_tour');
delete_site_option('cf_welcome_dashboard_completed_tour');
delete_option('cf_admin_notif');
delete_site_option('cf_admin_notif');
delete_option('cf_slack_notification_resolve_comment');
delete_site_option('cf_slack_notification_resolve_comment');
delete_option('cf_slack_notification_add_comment');
delete_site_option('cf_slack_notification_add_comment');
delete_option('cf_slack_notification_add_suggestion');
delete_site_option('cf_slack_notification_add_suggestion');
delete_option('cf_slack_notification_accept_reject_suggestion');
delete_site_option('cf_slack_notification_accept_reject_suggestion');
delete_option('access_token');
delete_site_option('access_token');
delete_option('user_access_token');
delete_site_option('user_access_token');
delete_option('channel_id');
delete_site_option('channel_id');
delete_option('cf_slack_webhook');
delete_site_option('cf_slack_webhook');
delete_option('cf_show_infoboard');
delete_site_option('cf_show_infoboard');
delete_option('cf_slack_channels');
delete_site_option('cf_slack_channels');
delete_option('cf_disable_checklist');
delete_site_option('cf_disable_checklist');
delete_option('cf_disable_suggestion');
delete_site_option('cf_disable_suggestion');
delete_option('cf_disable_real_time_editing');
delete_site_option('cf_disable_real_time_editing');
delete_option('cf_checklist_option_name');
delete_site_option('cf_checklist_option_name');
delete_option('cf_disable_checklist_publish_button');
delete_site_option('cf_disable_checklist_publish_button');
delete_option('cf_specific_post_types_checklist_values');
delete_site_option('cf_specific_post_types_checklist_values');
delete_option('cf_expire_date');
delete_site_option('cf_expire_date');
delete_option('cf_license_status');
delete_site_option('cf_license_status');
delete_option('cf_activated_license_details');
delete_site_option('cf_activated_license_details');

// Delete Transients
delete_transient('cf_system_users');
delete_site_transient('cf_system_users');
delete_transient('gc_users_list');
delete_site_transient('gc_users_list');
delete_transient('cf_promotional_banner_request_data');
delete_site_transient('cf_promotional_banner_request_data');
delete_transient('cf_promotional_banner_data');
delete_site_transient('cf_promotional_banner_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('cf_free_plugin_usage_data');
wp_clear_scheduled_hook('cf_daily_license_checker');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_realtime_collaborators_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_realtime_collaborators_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_realtime_collaborators_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_realtime_collaborators_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sb_suggestion_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sb_suggestion_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sb_suggestion_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sb_suggestion_history' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'th_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'th_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'th_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'th_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'th%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'th%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'th%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'th%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mc_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mc_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mc_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mc_updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_current_drafts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_current_drafts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_current_drafts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_current_drafts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'open_cf_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'open_cf_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'open_cf_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'open_cf_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_user_edited' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_user_edited' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_user_edited' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_user_edited' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_autodraft_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_autodraft_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_autodraft_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_autodraft_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'open_cf_comment_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'open_cf_comment_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'open_cf_comment_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'open_cf_comment_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_is_real_time_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_is_real_time_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_is_real_time_mode' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_is_real_time_mode' ) );

