<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('postman_options');
delete_site_option('postman_options');
delete_option('post_smtp_mobile_app_connection');
delete_site_option('post_smtp_mobile_app_connection');
delete_option('post_smtp_use_from_main_site');
delete_site_option('post_smtp_use_from_main_site');
delete_option('postman_dashboard_ad');
delete_site_option('postman_dashboard_ad');
delete_option('mainwp_child_pubkey');
delete_site_option('mainwp_child_pubkey');
delete_option('mainwp_child_siteid');
delete_site_option('mainwp_child_siteid');
delete_option('post_smtp_server_url');
delete_site_option('post_smtp_server_url');
delete_option('ps_dismissed_mobile_notice');
delete_site_option('ps_dismissed_mobile_notice');
delete_option('c2c_configure_smtp');
delete_site_option('c2c_configure_smtp');
delete_option('cimy_swift_smtp_options');
delete_site_option('cimy_swift_smtp_options');
delete_option('swpsmtp_options');
delete_site_option('swpsmtp_options');
delete_option('wp_smtp_options');
delete_site_option('wp_smtp_options');
delete_option('post_smtp_clean_diagnostic_report_data');
delete_site_option('post_smtp_clean_diagnostic_report_data');
delete_option('post_smtp_diagnostic_report_data');
delete_site_option('post_smtp_diagnostic_report_data');
delete_option('postman_rat');
delete_site_option('postman_rat');
delete_option('postman_db_version');
delete_site_option('postman_db_version');
delete_option('ps_migrate_logs');
delete_site_option('ps_migrate_logs');
delete_option('post_smtp_pro');
delete_site_option('post_smtp_pro');
delete_option('_transient__mailster_send_period_timeout');
delete_site_option('_transient__mailster_send_period_timeout');
delete_option('_transient__mailster_send_period');
delete_site_option('_transient__mailster_send_period');
delete_option('postman_auth_token');
delete_site_option('postman_auth_token');
delete_option('post_smtp_gmail_auth_url');
delete_site_option('post_smtp_gmail_auth_url');
delete_option('postman_release_version');
delete_site_option('postman_release_version');
delete_option('postman_dismiss_donation');
delete_site_option('postman_dismiss_donation');
delete_option('postman_state');
delete_site_option('postman_state');
delete_option('postman_stats');
delete_site_option('postman_stats');
delete_option('postman_session');
delete_site_option('postman_session');
delete_option('ps_hide_less_secure');
delete_site_option('ps_hide_less_secure');
delete_option('postman_office365_oauth');
delete_site_option('postman_office365_oauth');
delete_option('post_smtp_office365_auth_url');
delete_site_option('post_smtp_office365_auth_url');
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
delete_transient('post_smtp_auth_nonce');
delete_site_transient('post_smtp_auth_nonce');
delete_transient('ps_dismiss_update_notice');
delete_site_transient('ps_dismiss_update_notice');
delete_transient('sendpulse_token');
delete_site_transient('sendpulse_token');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');
delete_transient('ps-skip-bfcm');
delete_site_transient('ps-skip-bfcm');
delete_transient('post_smtp_skip_banner');
delete_site_transient('post_smtp_skip_banner');
delete_transient('ps_rat_has_sent');
delete_site_transient('ps_rat_has_sent');
delete_transient('_post_activation_redirect');
delete_site_transient('_post_activation_redirect');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('postman_rat_email_report');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

