<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('persistent_login_feature_flags');
delete_site_option('persistent_login_feature_flags');
delete_option('persistent_login_options');
delete_site_option('persistent_login_options');
delete_option('persistent_login_notification_email_subject');
delete_site_option('persistent_login_notification_email_subject');
delete_option('persistent_login_user_count');
delete_site_option('persistent_login_user_count');
delete_option('persistent_login_dashboard_stats');
delete_site_option('persistent_login_dashboard_stats');
delete_option('persistent_login_notification_email_template');
delete_site_option('persistent_login_notification_email_template');
delete_option('persistent_login_db_version');
delete_site_option('persistent_login_db_version');
delete_option('persistent_login_options_user_access');
delete_site_option('persistent_login_options_user_access');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('persistent_login_user_count_temporary');
delete_site_transient('persistent_login_user_count_temporary');
delete_transient('persistent_login_user_count_running');
delete_site_transient('persistent_login_user_count_running');
delete_transient('persistent_login_user_count_current_role');
delete_site_transient('persistent_login_user_count_current_role');
delete_transient('persistent_login_last_count');
delete_site_transient('persistent_login_last_count');
delete_transient('persistent_login_allowed_roles_reference');
delete_site_transient('persistent_login_allowed_roles_reference');
delete_transient('persistent_login_user_count_offset');
delete_site_transient('persistent_login_user_count_offset');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('persistent_login_user_count');
wp_clear_scheduled_hook('persistent_login_update_count');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'session_tokens' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'persistent_login_remember_me' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'persistent_login_remember_me' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'persistent_login_remember_me' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'persistent_login_remember_me' ) );

