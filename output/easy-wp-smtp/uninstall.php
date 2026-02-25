<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swpsmtp_options');
delete_site_option('swpsmtp_options');
delete_option('smtp_test_mail');
delete_site_option('smtp_test_mail');
delete_option('swpsmtp_pass_encrypted');
delete_site_option('swpsmtp_pass_encrypted');
delete_option('swpsmtp_enc_key');
delete_site_option('swpsmtp_enc_key');
delete_option('easy_wp_smtp_activated_time');
delete_site_option('easy_wp_smtp_activated_time');
delete_option('easy_wp_smtp_test_email');
delete_site_option('easy_wp_smtp_test_email');
delete_option('easy_wp_smtp_activation_prevent_redirect');
delete_site_option('easy_wp_smtp_activation_prevent_redirect');
delete_option('easy_wp_smtp_initial_version');
delete_site_option('easy_wp_smtp_initial_version');
delete_option('wpforms_activation_redirect');
delete_site_option('wpforms_activation_redirect');
delete_option('aioseo_activation_redirect');
delete_site_option('aioseo_activation_redirect');
delete_option('easy_wp_smtp_connect_token');
delete_site_option('easy_wp_smtp_connect_token');
delete_option('easy_wp_smtp_connect');
delete_site_option('easy_wp_smtp_connect');
delete_option('mailer');
delete_site_option('mailer');
delete_option('easy_wp_smtp_version');
delete_site_option('easy_wp_smtp_version');
delete_option('easy_wp_smtp_activated');
delete_site_option('easy_wp_smtp_activated');
delete_option('easy_wp_smtp_mail_key');
delete_site_option('easy_wp_smtp_mail_key');
delete_option('easy_wp_smtp_summary_report_email_last_sent_week');
delete_site_option('easy_wp_smtp_summary_report_email_last_sent_week');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('easy_wp_smtp');
delete_site_option('easy_wp_smtp');

// Delete Transients
delete_transient('easy_wp_smtp_lite_just_activated');
delete_site_transient('easy_wp_smtp_lite_just_activated');
delete_transient('easy_wp_smtp_sd_code');
delete_site_transient('easy_wp_smtp_sd_code');
delete_transient('easy_wp_smtp_activation_redirect');
delete_site_transient('easy_wp_smtp_activation_redirect');
delete_transient('easy_wp_smtp_just_activated');
delete_site_transient('easy_wp_smtp_just_activated');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'easy_wp_smtp_pro_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'easy_wp_smtp_pro_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'easy_wp_smtp_pro_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'easy_wp_smtp_pro_banner_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'easy_wp_smtp_debug_events_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'easy_wp_smtp_debug_events_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'easy_wp_smtp_debug_events_per_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'easy_wp_smtp_debug_events_per_page' ) );

