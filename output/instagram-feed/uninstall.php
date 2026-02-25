<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbi_license_key');
delete_site_option('sbi_license_key');
delete_option('sbi_license_data');
delete_site_option('sbi_license_data');
delete_option('sbi_statuses');
delete_site_option('sbi_statuses');
delete_option('sbi_custom_templates_notice_dismissed');
delete_site_option('sbi_custom_templates_notice_dismissed');
delete_option('sb_callout');
delete_site_option('sb_callout');
delete_option('sbi_license_status');
delete_site_option('sbi_license_status');
delete_option('sb_instagram_settings');
delete_site_option('sb_instagram_settings');
delete_option('sbi_usage_tracking');
delete_site_option('sbi_usage_tracking');
delete_option('sbi_cron_report');
delete_site_option('sbi_cron_report');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sbi_license_status_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sbi_top_api_calls');
delete_site_option('sbi_top_api_calls');
delete_option('sbi_rating_notice');
delete_site_option('sbi_rating_notice');
delete_option('sbi_license_last_check_timestamp');
delete_site_option('sbi_license_last_check_timestamp');
delete_option('sbi_oembed_token');
delete_site_option('sbi_oembed_token');
delete_option('sbi_one_click_upgrade');
delete_site_option('sbi_one_click_upgrade');
delete_option('cff_oembed_token');
delete_site_option('cff_oembed_token');
delete_option('sbi_hashtag_ids_with_connected_accounts');
delete_site_option('sbi_hashtag_ids_with_connected_accounts');
delete_option('sbi_db_version');
delete_site_option('sbi_db_version');
delete_option('sbi_legacy_feed_settings');
delete_site_option('sbi_legacy_feed_settings');
delete_option('sbi_ver');
delete_site_option('sbi_ver');
delete_option('sb_expired_tokens');
delete_site_option('sb_expired_tokens');
delete_option('sb_instagram_errors');
delete_site_option('sb_instagram_errors');
delete_option('sb_instagram_ajax_status');
delete_site_option('sb_instagram_ajax_status');
delete_option('sbi_hashtag_ids');
delete_site_option('sbi_hashtag_ids');
delete_option('sbi_usage_tracking_config');
delete_site_option('sbi_usage_tracking_config');
delete_option('sbi_refresh_report');
delete_site_option('sbi_refresh_report');
delete_option('sbi_welcome_seen');
delete_site_option('sbi_welcome_seen');
delete_option('sbi_notifications');
delete_site_option('sbi_notifications');
delete_option('sbi_newuser_notifications');
delete_site_option('sbi_newuser_notifications');
delete_option('sbi_connected_accounts');
delete_site_option('sbi_connected_accounts');
delete_option('sbi_theme_styles');
delete_site_option('sbi_theme_styles');
delete_option('sb_instagram_white_list_names');
delete_site_option('sb_instagram_white_list_names');
delete_option('aioseo_activation_redirect');
delete_site_option('aioseo_activation_redirect');
delete_option('wpforms_activation_redirect');
delete_site_option('wpforms_activation_redirect');
delete_option('optin_monster_api_activation_redirect_disabled');
delete_site_option('optin_monster_api_activation_redirect_disabled');
delete_option('seedprod_dismiss_setup_wizard');
delete_site_option('seedprod_dismiss_setup_wizard');
delete_option('cff_plugin_do_activation_redirect');
delete_site_option('cff_plugin_do_activation_redirect');
delete_option('sbi_review_consent');
delete_site_option('sbi_review_consent');
delete_option('sbi_dismiss_critical_notice');
delete_site_option('sbi_dismiss_critical_notice');
delete_option('sbi_local_avatars_info');
delete_site_option('sbi_local_avatars_info');
delete_option('sbi_local_avatars');
delete_site_option('sbi_local_avatars');
delete_option('sbi_single_cache');
delete_site_option('sbi_single_cache');
delete_option('sb_instagram_error_page');
delete_site_option('sb_instagram_error_page');
delete_option('sbi_plugin_do_activation_redirect');
delete_site_option('sbi_plugin_do_activation_redirect');
delete_option('sb_instagram_feed_notices');
delete_site_option('sb_instagram_feed_notices');
delete_option('sbi_check_license_api_when_expires');
delete_site_option('sbi_check_license_api_when_expires');
delete_option('sb_instagram_feed_group_notices');
delete_site_option('sb_instagram_feed_group_notices');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('instagram_feed_dismiss_lite');
delete_site_transient('instagram_feed_dismiss_lite');
delete_transient('_monsterinsights_activation_redirect');
delete_site_transient('_monsterinsights_activation_redirect');
delete_transient('optin_monster_api_activation_redirect');
delete_site_transient('optin_monster_api_activation_redirect');
delete_transient('pushengage_activation_redirect');
delete_site_transient('pushengage_activation_redirect');
delete_transient('instagram_feed_rating_notice_waiting');
delete_site_transient('instagram_feed_rating_notice_waiting');
delete_transient('sbinst_comment_cache');
delete_site_transient('sbinst_comment_cache');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_sbi_delay_fetch_%', '_site_transient_sbi_delay_fetch_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('sbi_feed_update');
wp_clear_scheduled_hook('sbi_usage_tracking_cron');
wp_clear_scheduled_hook('sbi_cron_additional_batch');
wp_clear_scheduled_hook('sb_instagram_feed_issue_email');
wp_clear_scheduled_hook('sb_instagram_cron_job');
wp_clear_scheduled_hook('sb_instagram_twicedaily');
wp_clear_scheduled_hook('sbi_notification_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbi_ignore_dashboard_license_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbi_ignore_dashboard_license_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbi_ignore_dashboard_license_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbi_ignore_dashboard_license_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbi_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbi_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbi_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbi_ignore_new_user_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_token' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_create_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_create_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_create_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_create_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_expires' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbi_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbi_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbi_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbi_onboarding' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sbi_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sbi_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sbi_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sbi_ignore_bfcm_sale_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );

