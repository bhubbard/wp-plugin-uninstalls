<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbi_plugin_do_activation_redirect');
delete_site_option('sbi_plugin_do_activation_redirect');
delete_option('cff_plugin_do_activation_redirect');
delete_site_option('cff_plugin_do_activation_redirect');
delete_option('trustpulse_api_plugin_do_activation_redirect');
delete_site_option('trustpulse_api_plugin_do_activation_redirect');
delete_option('simpay_customer_journey_start');
delete_site_option('simpay_customer_journey_start');
delete_option('duplicator_redirect_to_welcome');
delete_site_option('duplicator_redirect_to_welcome');
delete_option('userfeedback_license');
delete_site_option('userfeedback_license');
delete_option('userfeedback_parsed_addons');
delete_site_option('userfeedback_parsed_addons');
delete_option('wpforms_activation_redirect');
delete_site_option('wpforms_activation_redirect');
delete_option('aioseo_activation_redirect');
delete_site_option('aioseo_activation_redirect');
delete_option('userfeedback_onboarding_complete');
delete_site_option('userfeedback_onboarding_complete');
delete_option('userfeedback_notices');
delete_site_option('userfeedback_notices');
delete_option('userfeedback_over_time');
delete_site_option('userfeedback_over_time');
delete_option('userfeedback_review');
delete_site_option('userfeedback_review');
delete_option('userfeedback_tracking_data');
delete_site_option('userfeedback_tracking_data');
delete_option('userfeedback_usage_tracking_config');
delete_site_option('userfeedback_usage_tracking_config');
delete_option('userfeedback_debug_usage_tracking');
delete_site_option('userfeedback_debug_usage_tracking');
delete_option('userfeedback_usage_tracking_last_checkin');
delete_site_option('userfeedback_usage_tracking_last_checkin');
delete_option('uncannyautomator_source');
delete_site_option('uncannyautomator_source');
delete_option('automator_reporting');
delete_site_option('automator_reporting');
delete_option('userfeedback_current_version');
delete_site_option('userfeedback_current_version');
delete_option('userfeedback_db_version');
delete_site_option('userfeedback_db_version');
delete_option('userfeedback_version_upgraded_from');
delete_site_option('userfeedback_version_upgraded_from');
delete_option('userfeedback_license_updates');
delete_site_option('userfeedback_license_updates');
delete_option('userfeedback_network_license_updates');
delete_site_option('userfeedback_network_license_updates');
delete_option('userfeedback_network_license');
delete_site_option('userfeedback_network_license');
delete_option('userfeedback_shareasale_id');
delete_site_option('userfeedback_shareasale_id');
delete_option('userfeedback_admin_menu_tooltip');
delete_site_option('userfeedback_admin_menu_tooltip');
delete_option('userfeedback_connect');
delete_site_option('userfeedback_connect');
delete_option('userfeedback_connect_token');
delete_site_option('userfeedback_connect_token');
delete_option('userfeedback_timestamp_fixed');
delete_site_option('userfeedback_timestamp_fixed');

// Delete Transients
delete_transient('_userfeedback_addons');
delete_site_transient('_userfeedback_addons');
delete_transient('_monsterinsights_activation_redirect');
delete_site_transient('_monsterinsights_activation_redirect');
delete_transient('_exactmetrics_activation_redirect');
delete_site_transient('_exactmetrics_activation_redirect');
delete_transient('wp_mail_smtp_activation_redirect');
delete_site_transient('wp_mail_smtp_activation_redirect');
delete_transient('_rafflepress_welcome_screen_activation_redirect');
delete_site_transient('_rafflepress_welcome_screen_activation_redirect');
delete_transient('_seedprod_welcome_screen_activation_redirect');
delete_site_transient('_seedprod_welcome_screen_activation_redirect');
delete_transient('searchwp_live_search_activation_redirect');
delete_site_transient('searchwp_live_search_activation_redirect');
delete_transient('simpay_activation_redirect');
delete_site_transient('simpay_activation_redirect');
delete_transient('charitable_install');
delete_site_transient('charitable_install');
delete_transient('pushengage_activation_redirect');
delete_site_transient('pushengage_activation_redirect');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');
delete_transient('_userfeedback_activation_redirect');
delete_site_transient('_userfeedback_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('userfeedback_admin_notifications_update');
wp_clear_scheduled_hook('userfeedback_usage_tracking_cron');
wp_clear_scheduled_hook('userfeedback_email_summaries_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'userfeedback-dismiss-settings-blurb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'userfeedback-dismiss-settings-blurb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'userfeedback-dismiss-settings-blurb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'userfeedback-dismiss-settings-blurb' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_uf_disable_surveys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_uf_disable_surveys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_uf_disable_surveys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_uf_disable_surveys' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_uf_show_specific_survey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_uf_show_specific_survey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_uf_show_specific_survey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_uf_show_specific_survey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%ai-summary-upsell' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%ai-summary-upsell' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%ai-summary-upsell' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%ai-summary-upsell' ) );

