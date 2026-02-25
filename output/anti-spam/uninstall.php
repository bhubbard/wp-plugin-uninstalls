<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('titan_plugin_version');
delete_site_option('titan_plugin_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_logger_flag' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'titan_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('titan_backup_store_data');
delete_site_option('titan_backup_store_data');
delete_option('titan_backup_status');
delete_site_option('titan_backup_status');
delete_option('titan_audit_hidden_items');
delete_site_option('titan_audit_hidden_items');
delete_option('titan_audit_results');
delete_site_option('titan_audit_results');
delete_option('titan_cache_tip_dismissed');
delete_site_option('titan_cache_tip_dismissed');
delete_option('titan_bruteforce_lockouts');
delete_site_option('titan_bruteforce_lockouts');
delete_option('titan_bruteforce_logged');
delete_site_option('titan_bruteforce_logged');
delete_option('titan_backup_store');
delete_site_option('titan_backup_store');
delete_option('titan_current_archive');
delete_site_option('titan_current_archive');
delete_option('titan_backup_total_files');
delete_site_option('titan_backup_total_files');
delete_option('titan_backup_file_list');
delete_site_option('titan_backup_file_list');
delete_option('titan_backup_list');
delete_site_option('titan_backup_list');
delete_option('titan_antispam_mode');
delete_site_option('titan_antispam_mode');
delete_option('titan_comment_form_privacy_notice');
delete_site_option('titan_comment_form_privacy_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_install' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('titan_advanced_spam_filter');
delete_site_option('titan_advanced_spam_filter');
delete_option('titan_save_spam_comments');
delete_site_option('titan_save_spam_comments');
delete_option('antispam_stats');
delete_site_option('antispam_stats');
delete_option('titan_bruteforce_blacklist_ips');
delete_site_option('titan_bruteforce_blacklist_ips');
delete_option('titan_bruteforce_blacklist_usernames');
delete_site_option('titan_bruteforce_blacklist_usernames');
delete_option('titan_bruteforce_gdpr');
delete_site_option('titan_bruteforce_gdpr');
delete_option('titan_bruteforce_retries_valid');
delete_site_option('titan_bruteforce_retries_valid');
delete_option('titan_bruteforce_retries');
delete_site_option('titan_bruteforce_retries');
delete_option('titan_bruteforce_minutes_lockout');
delete_site_option('titan_bruteforce_minutes_lockout');
delete_option('titan_bruteforce_whitelist_ips');
delete_site_option('titan_bruteforce_whitelist_ips');
delete_option('titan_bruteforce_whitelist_usernames');
delete_site_option('titan_bruteforce_whitelist_usernames');
delete_option('titan_bruteforce_allowed_retries');
delete_site_option('titan_bruteforce_allowed_retries');
delete_option('titan_bruteforce_valid_duration');
delete_site_option('titan_bruteforce_valid_duration');
delete_option('titan_bruteforce_lockouts_total');
delete_site_option('titan_bruteforce_lockouts_total');
delete_option('titan_bruteforce_set_default_options');
delete_site_option('titan_bruteforce_set_default_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('titan_bruteforce_enabled');
delete_site_option('titan_bruteforce_enabled');
delete_option('titan_strong_password');
delete_site_option('titan_strong_password');
delete_option('titan_schedule_backup');
delete_site_option('titan_schedule_backup');
delete_option('titan_remove_old_data');
delete_site_option('titan_remove_old_data');
delete_option('titan_backup_files_per_iteration');
delete_site_option('titan_backup_files_per_iteration');
delete_option('titan_strong_password_min_role');
delete_site_option('titan_strong_password_min_role');
delete_option('titan_protect_author_get');
delete_site_option('titan_protect_author_get');
delete_option('titan_remove_x_pingback');
delete_site_option('titan_remove_x_pingback');
delete_option('titan_remove_html_comments');
delete_site_option('titan_remove_html_comments');
delete_option('titan_remove_meta_generator');
delete_site_option('titan_remove_meta_generator');
delete_option('titan_remove_js_version');
delete_site_option('titan_remove_js_version');
delete_option('titan_remove_style_version');
delete_site_option('titan_remove_style_version');
delete_option('titan_complete_uninstall');
delete_site_option('titan_complete_uninstall');
delete_option('titan_strict_https');
delete_site_option('titan_strict_https');
delete_option('titan_setup_wizard');
delete_site_option('titan_setup_wizard');
delete_option('titan_remove_version_exclude');
delete_site_option('titan_remove_version_exclude');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license_plan' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_failed_checks' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('themeisle_sdk_notifications');
delete_site_option('themeisle_sdk_notifications');
delete_option('otter_reference_key');
delete_site_option('otter_reference_key');
delete_option('optimole_reference_key');
delete_site_option('optimole_reference_key');
delete_option('rop_reference_key');
delete_site_option('rop_reference_key');
delete_option('neve_reference_key');
delete_site_option('neve_reference_key');
delete_option('hyve_reference_key');
delete_site_option('hyve_reference_key');
delete_option('wp_full_pay_reference_key');
delete_site_option('wp_full_pay_reference_key');
delete_option('feedzy_reference_key');
delete_site_option('feedzy_reference_key');
delete_option('themeisle_sdk_promotions_otter');
delete_site_option('themeisle_sdk_promotions_otter');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_license' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('titan_spam_actions_scheduled');
delete_site_transient('titan_spam_actions_scheduled');
delete_transient('wtitan_premium_version_incompatible');
delete_site_transient('wtitan_premium_version_incompatible');
delete_transient('titan_audit_results');
delete_site_transient('titan_audit_results');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('wantispam_stats_cache');
delete_site_transient('wantispam_stats_cache');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ti_plugin_info_%', '_site_transient_ti_plugin_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('themeisle_sdk_cache_token');
delete_site_transient('themeisle_sdk_cache_token');
delete_transient('themeisle_sdk_feed_items');
delete_site_transient('themeisle_sdk_feed_items');
delete_transient('themeisle_sdk_products');
delete_site_transient('themeisle_sdk_products');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%act_err', '_site_transient_%act_err' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_license_data', '_site_transient_%_license_data' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('tsk_attachment_count');
delete_site_transient('tsk_attachment_count');
delete_transient('tsk_posts_count');
delete_site_transient('tsk_posts_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ti_theme_info_%', '_site_transient_ti_theme_info_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_warning_rollback', '_site_transient_%_warning_rollback' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ti_sdk_pause_%', '_site_transient_ti_sdk_pause_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Cron Jobs
wp_clear_scheduled_hook('wbcr_bm_backup_time');
wp_clear_scheduled_hook('wbcr_bm_remove_old_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_titan_spam_filtered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_titan_spam_filtered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_titan_spam_filtered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_titan_spam_filtered' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_titan_spam_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_titan_spam_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_titan_spam_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_titan_spam_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_titan_spam_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_titan_spam_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_titan_spam_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_titan_spam_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'titan_password_change_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'titan_password_change_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'titan_password_change_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'titan_password_change_required' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'titan_last_password_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'titan_last_password_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'titan_last_password_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'titan_last_password_change' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'titan-password-updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'titan-password-updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'titan-password-updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'titan-password-updated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'themeisle_sdk_dismissed_notice_black_friday' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'themeisle_sdk_dismissed_notice_black_friday' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'themeisle_sdk_dismissed_notice_black_friday' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'themeisle_sdk_dismissed_notice_black_friday' ) );

