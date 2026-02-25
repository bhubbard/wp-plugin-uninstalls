<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctf_options');
delete_site_option('ctf_options');
delete_option('ctf_configure');
delete_site_option('ctf_configure');
delete_option('ctf_version');
delete_site_option('ctf_version');
delete_option('ctf_customize');
delete_site_option('ctf_customize');
delete_option('ctf_style');
delete_site_option('ctf_style');
delete_option('ctf_db_version');
delete_site_option('ctf_db_version');
delete_option('ctf_statuses');
delete_site_option('ctf_statuses');
delete_option('ctf_rating_notice');
delete_site_option('ctf_rating_notice');
delete_option('ctf_legacy_feed_settings');
delete_site_option('ctf_legacy_feed_settings');
delete_option('ctf_usage_tracking');
delete_site_option('ctf_usage_tracking');
delete_option('ctf_license_key');
delete_site_option('ctf_license_key');
delete_option('ctf_license_data');
delete_site_option('ctf_license_data');
delete_option('ctf_check_license_api_when_expires');
delete_site_option('ctf_check_license_api_when_expires');
delete_option('ctf_license_status');
delete_site_option('ctf_license_status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ctf_license_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ctf_license_last_check_timestamp');
delete_site_option('ctf_license_last_check_timestamp');
delete_option('ctf_review_consent');
delete_site_option('ctf_review_consent');
delete_option('ctf_notifications');
delete_site_option('ctf_notifications');
delete_option('ctf_api_call_log');
delete_site_option('ctf_api_call_log');
delete_option('ctf_cron_report');
delete_site_option('ctf_cron_report');
delete_option('ctf_errors');
delete_site_option('ctf_errors');
delete_option('ctf_one_click_upgrade');
delete_site_option('ctf_one_click_upgrade');
delete_option('ctf_ver');
delete_site_option('ctf_ver');
delete_option('ctf_usage_tracking_config');
delete_site_option('ctf_usage_tracking_config');
delete_option('ctf_local_avatars');
delete_site_option('ctf_local_avatars');
delete_option('ctf_cache_list');
delete_site_option('ctf_cache_list');
delete_option('ctf_twitter_cards');
delete_site_option('ctf_twitter_cards');
delete_option('ctf_theme_styles');
delete_site_option('ctf_theme_styles');
delete_option('ctf_welcome_seen');
delete_site_option('ctf_welcome_seen');
delete_option('ctf_newuser_notifications');
delete_site_option('ctf_newuser_notifications');

// Delete Transients
delete_transient('custom_twitter_feeds_rating_notice_waiting');
delete_site_transient('custom_twitter_feeds_rating_notice_waiting');
delete_transient('instagram_feed_dismiss_lite');
delete_site_transient('instagram_feed_dismiss_lite');
delete_transient('twitter_feed_dismiss_lite');
delete_site_transient('twitter_feed_dismiss_lite');
delete_transient('sb_twitter_oauth_bearer_access_token_cache');
delete_site_transient('sb_twitter_oauth_bearer_access_token_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('ctf_feed_update');
wp_clear_scheduled_hook('ctf_cron_job');
wp_clear_scheduled_hook('ctf_usage_tracking_cron');
wp_clear_scheduled_hook('ctf_cron_additional_batch');
wp_clear_scheduled_hook('ctf_smash_twitter_feed_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ctf_ignore_dashboard_license_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ctf_ignore_dashboard_license_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ctf_ignore_dashboard_license_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ctf_ignore_dashboard_license_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ctf_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ctf_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ctf_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ctf_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ctf_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ctf_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ctf_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ctf_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ctf_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ctf_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ctf_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ctf_onboarding' ) );

