<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('wordfenceActivated');
delete_site_option('wordfenceActivated');
delete_option('wordfence_version');
delete_site_option('wordfence_version');
delete_option('iwp_client_action_message_id');
delete_site_option('iwp_client_action_message_id');
delete_option('iwp_client_public_key');
delete_site_option('iwp_client_public_key');
delete_option('wordfence_syncingAttackData');
delete_site_option('wordfence_syncingAttackData');
delete_option('wordfence_lastSyncAttackData');
delete_site_option('wordfence_lastSyncAttackData');
delete_option('wordfence_syncAttackDataAttempts');
delete_site_option('wordfence_syncAttackDataAttempts');
delete_option('limit_login_retries');
delete_site_option('limit_login_retries');
delete_option('wf_plugin_act_error');
delete_site_option('wf_plugin_act_error');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('woocommerce_enable_checkout_login_reminder');
delete_site_option('woocommerce_enable_checkout_login_reminder');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%.lock' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wordfenceCentralJWT%', '_site_transient_wordfenceCentralJWT%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wordfenceCentralDisconnectCount');
delete_site_transient('wordfenceCentralDisconnectCount');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('wordfence_updating_notifications');
delete_site_transient('wordfence_updating_notifications');
delete_transient('wordfenceUnlockTries');
delete_site_transient('wordfenceUnlockTries');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wfunlock_%', '_site_transient_wfunlock_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wfSyncGeoIPActive');
delete_site_transient('wfSyncGeoIPActive');
delete_transient('wfsn_backoff');
delete_site_transient('wfsn_backoff');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wflsbucket:%', '_site_transient_wflsbucket:%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wordfence_email_activity_report');
wp_clear_scheduled_hook('wordfence_batchSendAuditEvents');
wp_clear_scheduled_hook('wordfence_batchSendSecurityEvents');
wp_clear_scheduled_hook('wordfence_daily_autoUpdate');
wp_clear_scheduled_hook('wordfence_daily_cron');
wp_clear_scheduled_hook('wordfence_hourly_cron');
wp_clear_scheduled_hook('wordfence_scheduled_scan');
wp_clear_scheduled_hook('wordfence_refreshUpdateNotification');
wp_clear_scheduled_hook('wordfence_completeCoreUpdateNotification');
wp_clear_scheduled_hook('wordfence_version_check');
wp_clear_scheduled_hook('wordfence_batchReportBlockedAttempts');
wp_clear_scheduled_hook('wordfence_batchReportFailedAttempts');
wp_clear_scheduled_hook('wordfence_processAttackData');
wp_clear_scheduled_hook('wordfence_start_scheduled_scan');
wp_clear_scheduled_hook('wordfence_ls_role_sync_cron');
wp_clear_scheduled_hook('wordfence_ls_ntp_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_context' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_context' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_context' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_context' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wf_twoFactorNonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wf_twoFactorNonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wf_twoFactorNonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wf_twoFactorNonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wf_twoFactorNonceTime' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wf_twoFactorNonceTime' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wf_twoFactorNonceTime' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wf_twoFactorNonceTime' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wordfence-notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wordfence-notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wordfence-notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wordfence-notifications' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wfls-last-captcha-score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wfls-last-captcha-score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wfls-last-captcha-score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wfls-last-captcha-score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wfls-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wfls-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wfls-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wfls-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wfls-captcha-nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wfls-captcha-nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wfls-captcha-nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wfls-captcha-nonce' ) );

