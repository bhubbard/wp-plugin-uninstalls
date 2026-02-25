<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
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
delete_option('wpfda_enable_feedback_email');
delete_site_option('wpfda_enable_feedback_email');
delete_option('wpfda_redirect_url');
delete_site_option('wpfda_redirect_url');
delete_option('wpfda_button_label');
delete_site_option('wpfda_button_label');
delete_option('wpfda_security');
delete_site_option('wpfda_security');
delete_option('wpfda_security_custom_captcha_question');
delete_site_option('wpfda_security_custom_captcha_question');
delete_option('wpfda_security_custom_captcha_answer');
delete_site_option('wpfda_security_custom_captcha_answer');
delete_option('wpfda_security_password_text');
delete_site_option('wpfda_security_password_text');
delete_option('wpfda_title');
delete_site_option('wpfda_title');
delete_option('wpfda_attribute');
delete_site_option('wpfda_attribute');
delete_option('wpfda_delete_comments');
delete_site_option('wpfda_delete_comments');
delete_option('wpfda_upgrade_notice_dismissed');
delete_site_option('wpfda_upgrade_notice_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_email_message' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_email' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpfda_enable_admin_email');
delete_site_option('wpfda_enable_admin_email');
delete_option('wpfda_email_receipent');
delete_site_option('wpfda_email_receipent');
delete_option('wpfda_admin_email_subject');
delete_site_option('wpfda_admin_email_subject');
delete_option('wpfda_admin_email_message');
delete_site_option('wpfda_admin_email_message');
delete_option('wpfda_enable_user_email');
delete_site_option('wpfda_enable_user_email');
delete_option('wpfda_user_email_subject');
delete_site_option('wpfda_user_email_subject');
delete_option('wpfda_user_email_message');
delete_site_option('wpfda_user_email_message');
delete_option('wpfda_feedback_email_receipent');
delete_site_option('wpfda_feedback_email_receipent');
delete_option('wpfda_feedback_email_subject');
delete_site_option('wpfda_feedback_email_subject');
delete_option('wpfda_feedback_email_message');
delete_site_option('wpfda_feedback_email_message');
delete_option('wpfda_enable_summary_email');
delete_site_option('wpfda_enable_summary_email');
delete_option('wpfda_summary_email_receipent');
delete_site_option('wpfda_summary_email_receipent');
delete_option('wpfda_summary_email_subject');
delete_site_option('wpfda_summary_email_subject');
delete_option('wpfda_summary_email_message');
delete_site_option('wpfda_summary_email_message');
delete_option('wpfda_deleted_users_date');
delete_site_option('wpfda_deleted_users_date');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

