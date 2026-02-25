<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dam_spam_options');
delete_site_option('dam_spam_options');
delete_option('dam_spam_stats');
delete_site_option('dam_spam_stats');
delete_option('dam_spam_require_activation');
delete_site_option('dam_spam_require_activation');
delete_option('dam_spam_muswitch');
delete_site_option('dam_spam_muswitch');
delete_option('dam_spam_enable_custom_login');
delete_site_option('dam_spam_enable_custom_login');
delete_option('dam_spam_manual_bans');
delete_site_option('dam_spam_manual_bans');
delete_option('dam_spam_automatic_bans');
delete_site_option('dam_spam_automatic_bans');
delete_option('ss_stop_sp_reg_options');
delete_site_option('ss_stop_sp_reg_options');
delete_option('ss_stop_sp_reg_stats');
delete_site_option('ss_stop_sp_reg_stats');
delete_option('dam_spam_migrated_from_ss');
delete_site_option('dam_spam_migrated_from_ss');
delete_option('dam_spam_migrated_from_ds');
delete_site_option('dam_spam_migrated_from_ds');
delete_option('wordpredam_spam_api_key');
delete_site_option('wordpredam_spam_api_key');
delete_option('dam_spam_enable_firewall');
delete_site_option('dam_spam_enable_firewall');
delete_option('dam_spam_login_attempts');
delete_site_option('dam_spam_login_attempts');
delete_option('dam_spam_login_type');
delete_site_option('dam_spam_login_type');
delete_option('dam_spam_honeypot_cf7');
delete_site_option('dam_spam_honeypot_cf7');
delete_option('dam_spam_honeypot_bbpress');
delete_site_option('dam_spam_honeypot_bbpress');
delete_option('dam_spam_honeypot_elementor');
delete_site_option('dam_spam_honeypot_elementor');
delete_option('dam_spam_honeypot_divi');
delete_site_option('dam_spam_honeypot_divi');
delete_option('dam_spam_login_attempts_threshold');
delete_site_option('dam_spam_login_attempts_threshold');
delete_option('dam_spam_login_attempts_duration');
delete_site_option('dam_spam_login_attempts_duration');
delete_option('dam_spam_activation_auto_delete');
delete_site_option('dam_spam_activation_auto_delete');
delete_option('dam_spam_login_attempts_unit');
delete_site_option('dam_spam_login_attempts_unit');
delete_option('dam_spam_login_attempts_by_ip');
delete_site_option('dam_spam_login_attempts_by_ip');
delete_option('dam_spam_cache');
delete_site_option('dam_spam_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('dam_spam_cleanup_unverified');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dam_spam_notice_dismissed_2026_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dam_spam_notice_dismissed_2026_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dam_spam_notice_dismissed_2026_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dam_spam_notice_dismissed_2026_1' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dam_spam_wc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dam_spam_wc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dam_spam_wc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dam_spam_wc_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'signup_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'signup_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'signup_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'signup_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dam_spam_activation_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dam_spam_activation_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dam_spam_activation_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dam_spam_activation_pending' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dam_spam_activation_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dam_spam_activation_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dam_spam_activation_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dam_spam_activation_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dam_spam_activation_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dam_spam_activation_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dam_spam_activation_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dam_spam_activation_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_IUD_userBlockedTime' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_IUD_userBlockedTime' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_IUD_userBlockedTime' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_IUD_userBlockedTime' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dam_spam_is_locked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dam_spam_is_locked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dam_spam_is_locked' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dam_spam_is_locked' ) );

