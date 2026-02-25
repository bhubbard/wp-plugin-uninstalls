<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wple_show_review');
delete_site_option('wple_show_review');
delete_option('wple_show_review_disabled');
delete_site_option('wple_show_review_disabled');
delete_option('wple_show_reminder');
delete_site_option('wple_show_reminder');
delete_option('wple_mixed_issues');
delete_site_option('wple_mixed_issues');
delete_option('wple_mixed_issues_disabled');
delete_site_option('wple_mixed_issues_disabled');
delete_option('wple_notice_trial');
delete_site_option('wple_notice_trial');
delete_option('wple_notice_disabled_trial');
delete_site_option('wple_notice_disabled_trial');
delete_option('wple_version');
delete_site_option('wple_version');
delete_option('wple_plan_choose');
delete_site_option('wple_plan_choose');
delete_option('wple_activate');
delete_site_option('wple_activate');
delete_option('wple_opts');
delete_site_option('wple_opts');
delete_option('wple_ssl_screen');
delete_site_option('wple_ssl_screen');
delete_option('wple_backup_suggested');
delete_site_option('wple_backup_suggested');
delete_option('wple_have_cpanel');
delete_site_option('wple_have_cpanel');
delete_option('wple_have_plesk');
delete_site_option('wple_have_plesk');
delete_option('wple_have_directadmin');
delete_site_option('wple_have_directadmin');
delete_option('wple_have_siteground');
delete_site_option('wple_have_siteground');
delete_option('wple_parent_reachable');
delete_site_option('wple_parent_reachable');
delete_option('wple_error');
delete_site_option('wple_error');
delete_option('wple_backend');
delete_site_option('wple_backend');
delete_option('wple_hold_cron');
delete_site_option('wple_hold_cron');
delete_option('wple_order_refreshed');
delete_site_option('wple_order_refreshed');
delete_option('wple_renewal_failed_notice');
delete_site_option('wple_renewal_failed_notice');
delete_option('wple_ssl_monitoring');
delete_site_option('wple_ssl_monitoring');
delete_option('wple_dismissed_notices');
delete_site_option('wple_dismissed_notices');
delete_option('wple_ssl_errors');
delete_site_option('wple_ssl_errors');
delete_option('wple_email_certs');
delete_site_option('wple_email_certs');
delete_option('wple_mscan_integrity');
delete_site_option('wple_mscan_integrity');
delete_option('wple_malware_ignorelist');
delete_site_option('wple_malware_ignorelist');
delete_option('wple_malware_lastscan');
delete_site_option('wple_malware_lastscan');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wple_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wple_xxss');
delete_site_option('wple_xxss');
delete_option('wple_xcontenttype');
delete_site_option('wple_xcontenttype');
delete_option('wple_ssl_valid');
delete_site_option('wple_ssl_valid');
delete_option('wple_upgrade_insecure');
delete_site_option('wple_upgrade_insecure');
delete_option('wple_hsts');
delete_site_option('wple_hsts');
delete_option('wple_vulnerability_scan');
delete_site_option('wple_vulnerability_scan');
delete_option('wple_vulnerability_lastscan');
delete_site_option('wple_vulnerability_lastscan');
delete_option('wple_security_settings');
delete_site_option('wple_security_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wple_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wple_notice_disabled_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wple_failed_verification');
delete_site_option('wple_failed_verification');
delete_option('wple_stage');
delete_site_option('wple_stage');
delete_option('wple_survey_interests');
delete_site_option('wple_survey_interests');
delete_option('wple_sectigo');
delete_site_option('wple_sectigo');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wple_disable_spmode');
delete_site_option('wple_disable_spmode');
delete_option('wple_http_valid');
delete_site_option('wple_http_valid');
delete_option('wple_send_usage');
delete_site_option('wple_send_usage');
delete_option('wple_sourceip');
delete_site_option('wple_sourceip');
delete_option('wple_acc_key');
delete_site_option('wple_acc_key');
delete_option('wple_priv_key');
delete_site_option('wple_priv_key');
delete_option('wple_mixed_content_fixer');
delete_site_option('wple_mixed_content_fixer');
delete_option('wple_referrer');
delete_site_option('wple_referrer');
delete_option('wple_xframe');
delete_site_option('wple_xframe');
delete_option('wple_ssllabs_expiry');
delete_site_option('wple_ssllabs_expiry');
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
delete_transient('wple_plan_chosen');
delete_site_transient('wple_plan_chosen');
delete_transient('wple_ssllabs');
delete_site_transient('wple_ssllabs');
delete_transient('wple_alternate_headers');
delete_site_transient('wple_alternate_headers');
delete_transient('wple_vulnerability_scan');
delete_site_transient('wple_vulnerability_scan');
delete_transient('wple_survey_pending');
delete_site_transient('wple_survey_pending');
delete_transient('health-check-site-status-result');
delete_site_transient('health-check-site-status-result');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('wple_remindlater_trial');
wp_clear_scheduled_hook('wple_show_reviewrequest');
wp_clear_scheduled_hook('wple_show_mxalert');
wp_clear_scheduled_hook('wple_init_vulnerability_scan');
wp_clear_scheduled_hook('wple_ssl_expiry_update');
wp_clear_scheduled_hook('wple_init_ssllabs');
wp_clear_scheduled_hook('wple_ssl_reminder_notice');
wp_clear_scheduled_hook('wple_ssl_renewal');
wp_clear_scheduled_hook('wple_ssl_renewal_recheck');
wp_clear_scheduled_hook('wple_ssl_renewal_failed');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

