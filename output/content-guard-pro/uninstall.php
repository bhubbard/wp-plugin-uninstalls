<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('content_guard_pro_settings');
delete_site_option('content_guard_pro_settings');
delete_option('content_guard_pro_rule_pack_version');
delete_site_option('content_guard_pro_rule_pack_version');
delete_option('content_guard_pro_rule_pack_last_update');
delete_site_option('content_guard_pro_rule_pack_last_update');
delete_option('content_guard_pro_setup_completed');
delete_site_option('content_guard_pro_setup_completed');
delete_option('content_guard_pro_version');
delete_site_option('content_guard_pro_version');
delete_option('content_guard_pro_first_activation');
delete_site_option('content_guard_pro_first_activation');
delete_option('cgpro_installation_id');
delete_site_option('cgpro_installation_id');

// Delete Transients
delete_transient('content_guard_pro_admin_notice');
delete_site_transient('content_guard_pro_admin_notice');
delete_transient('content_guard_pro_allowlist_pattern');
delete_site_transient('content_guard_pro_allowlist_pattern');
delete_transient('content_guard_pro_denylist_patterns');
delete_site_transient('content_guard_pro_denylist_patterns');
delete_transient('content_guard_pro_activation_redirect');
delete_site_transient('content_guard_pro_activation_redirect');
delete_transient('content_guard_pro_clear_data_success');
delete_site_transient('content_guard_pro_clear_data_success');
delete_transient('content_guard_pro_clear_data_error');
delete_site_transient('content_guard_pro_clear_data_error');
delete_transient('content_guard_pro_cleanup_success');
delete_site_transient('content_guard_pro_cleanup_success');
delete_transient('content_guard_pro_cleanup_error');
delete_site_transient('content_guard_pro_cleanup_error');
delete_transient('content_guard_pro_activation_registered');
delete_site_transient('content_guard_pro_activation_registered');
delete_transient('content_guard_pro_scan_progress');
delete_site_transient('content_guard_pro_scan_progress');
delete_transient('content_guard_pro_scan_completed');
delete_site_transient('content_guard_pro_scan_completed');
delete_transient('content_guard_pro_db_creation_log');
delete_site_transient('content_guard_pro_db_creation_log');
delete_transient('content_guard_pro_admin_notices');
delete_site_transient('content_guard_pro_admin_notices');
delete_transient('content_guard_pro_active_scan_progress');
delete_site_transient('content_guard_pro_active_scan_progress');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_content_guard_pro_scan_progress_%', '_site_transient_content_guard_pro_scan_progress_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_content_guard_pro_pending_scan_%', '_site_transient_content_guard_pro_pending_scan_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('content_guard_pro_active_scan_id');
delete_site_transient('content_guard_pro_active_scan_id');
delete_transient('content_guard_pro_db_size_check');
delete_site_transient('content_guard_pro_db_size_check');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('content_guard_pro_cleanup_old_data');
wp_clear_scheduled_hook('content_guard_pro_daily_digest');
wp_clear_scheduled_hook('content_guard_pro_scheduled_scan');
wp_clear_scheduled_hook('content_guard_pro_async_activation');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_guard_pro_dismissed_critical_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_guard_pro_dismissed_critical_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_guard_pro_dismissed_critical_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_guard_pro_dismissed_critical_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_guard_pro_last_dismissed_critical_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_guard_pro_last_dismissed_critical_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_guard_pro_last_dismissed_critical_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_guard_pro_last_dismissed_critical_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'content_guard_pro_dismissed_welcome_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'content_guard_pro_dismissed_welcome_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'content_guard_pro_dismissed_welcome_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'content_guard_pro_dismissed_welcome_notice' ) );

