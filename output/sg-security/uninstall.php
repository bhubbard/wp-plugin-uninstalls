<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sg_security_lock_system_folders');
delete_site_option('sg_security_lock_system_folders');
delete_option('sg_security_disable_xml_rpc');
delete_site_option('sg_security_disable_xml_rpc');
delete_option('sgs_activity_log_lifetime');
delete_site_option('sgs_activity_log_lifetime');
delete_option('sg_security_server_address');
delete_site_option('sg_security_server_address');
delete_option('sg_security_user_ping_services');
delete_site_option('sg_security_user_ping_services');
delete_option('sg_security_user_crawlers');
delete_site_option('sg_security_user_crawlers');
delete_option('sg_security_total_blocked_logins');
delete_site_option('sg_security_total_blocked_logins');
delete_option('sg_security_total_blocked_visits');
delete_site_option('sg_security_total_blocked_visits');
delete_option('siteground_email_consent');
delete_site_option('siteground_email_consent');
delete_option('sg_security_weekly_email_timestamp');
delete_site_option('sg_security_weekly_email_timestamp');
delete_option('sg_security_notification_emails');
delete_site_option('sg_security_notification_emails');
delete_option('sg_security_update_timestamp');
delete_site_option('sg_security_update_timestamp');
delete_option('siteground_data_consent');
delete_site_option('siteground_data_consent');
delete_option('siteground_settings_security');
delete_site_option('siteground_settings_security');
delete_option('sg_security_current_version');
delete_site_option('sg_security_current_version');
delete_option('sg_security_login_type');
delete_site_option('sg_security_login_type');
delete_option('sg_security_login_url');
delete_site_option('sg_security_login_url');
delete_option('sg_login_access');
delete_site_option('sg_login_access');
delete_option('sg_security_login_redirect');
delete_site_option('sg_security_login_redirect');
delete_option('sg_security_login_register');
delete_site_option('sg_security_login_register');
delete_option('sg_security_show_signup_notice');
delete_site_option('sg_security_show_signup_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sg_security_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sg_security_login_attempts');
delete_site_option('sg_security_login_attempts');
delete_option('sgs_install_1_3_6');
delete_site_option('sgs_install_1_3_6');
delete_option('sgs_install_1_3_7');
delete_site_option('sgs_install_1_3_7');
delete_option('sgs_install_1_4_2');
delete_site_option('sgs_install_1_4_2');
delete_option('sgs_install_1_4_4');
delete_site_option('sgs_install_1_4_4');
delete_option('sgs_install_1_4_7');
delete_site_option('sgs_install_1_4_7');
delete_option('sg_security_version');
delete_site_option('sg_security_version');
delete_option('sg_security_disable_activity_log');
delete_site_option('sg_security_disable_activity_log');
delete_option('sg_security_delete_readme');
delete_site_option('sg_security_delete_readme');
delete_option('sg_security_unsuccessful_login');
delete_site_option('sg_security_unsuccessful_login');
delete_option('sg_security_show_rating');
delete_site_option('sg_security_show_rating');
delete_option('sg_security_disable_file_edit');
delete_site_option('sg_security_disable_file_edit');
delete_option('sg_security_wp_remove_version');
delete_site_option('sg_security_wp_remove_version');
delete_option('sg_security_disable_feed');
delete_site_option('sg_security_disable_feed');
delete_option('sg_security_xss_protection');
delete_site_option('sg_security_xss_protection');
delete_option('sg_security_sg2fa');
delete_site_option('sg_security_sg2fa');
delete_option('sg_security_disable_usernames');
delete_site_option('sg_security_disable_usernames');
delete_option('sg_security_2fa_encryption_file_notice');
delete_site_option('sg_security_2fa_encryption_file_notice');

// Delete Transients
delete_transient('_sg_security_installing');
delete_site_transient('_sg_security_installing');

// Clear Cron Jobs
wp_clear_scheduled_hook('siteground_security_clear_logs_cron');
wp_clear_scheduled_hook('sgs_email_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sgs_additional_codes_added' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sgs_additional_codes_added' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sgs_additional_codes_added' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sgs_additional_codes_added' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_security_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_security_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_security_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_security_2fa_backup_codes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_security_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_security_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_security_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_security_2fa_secret' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_security_2fa_qr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_security_2fa_qr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_security_2fa_qr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_security_2fa_qr' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_security_force_password_reset' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_security_force_password_reset' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_security_force_password_reset' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_security_force_password_reset' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'sg_security_2fa_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'sg_security_2fa_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'sg_security_2fa_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'sg_security_2fa_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sgs_2fa_dnc_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sgs_2fa_dnc_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sgs_2fa_dnc_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sgs_2fa_dnc_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sg_security_2fa_configured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sg_security_2fa_configured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sg_security_2fa_configured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sg_security_2fa_configured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sgs_2fa_login_nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sgs_2fa_login_nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sgs_2fa_login_nonce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sgs_2fa_login_nonce' ) );

