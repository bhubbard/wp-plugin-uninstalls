<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('triggervox_plugin_status');
delete_site_option('triggervox_plugin_status');
delete_option('triggervox_current_userid');
delete_site_option('triggervox_current_userid');
delete_option('triggervox_setup_completed');
delete_site_option('triggervox_setup_completed');
delete_option('triggervox_wpforms_integration_enabled');
delete_site_option('triggervox_wpforms_integration_enabled');
delete_option('triggervox_cf7_integration_enabled');
delete_site_option('triggervox_cf7_integration_enabled');
delete_option('triggervox_unique_id');
delete_site_option('triggervox_unique_id');
delete_option('triggervox_integration_mode');
delete_site_option('triggervox_integration_mode');
delete_option('triggervox_setup_banner_dismissed');
delete_site_option('triggervox_setup_banner_dismissed');
delete_option('triggervox_phone_verified');
delete_site_option('triggervox_phone_verified');
delete_option('triggervox_last_phone_check');
delete_site_option('triggervox_last_phone_check');
delete_option('triggervox_button_bg_color');
delete_site_option('triggervox_button_bg_color');
delete_option('triggervox_button_text_color');
delete_site_option('triggervox_button_text_color');
delete_option('triggervox_button_text');
delete_site_option('triggervox_button_text');
delete_option('triggervox_button_photo');
delete_site_option('triggervox_button_photo');
delete_option('triggervox_popup_bg_color');
delete_site_option('triggervox_popup_bg_color');
delete_option('triggervox_button_color');
delete_site_option('triggervox_button_color');
delete_option('triggervox_text_color');
delete_site_option('triggervox_text_color');
delete_option('triggervox_display_type');
delete_site_option('triggervox_display_type');
delete_option('triggervox_widget_delay');
delete_site_option('triggervox_widget_delay');
delete_option('triggervox_form_header');
delete_site_option('triggervox_form_header');
delete_option('triggervox_form_subtitle');
delete_site_option('triggervox_form_subtitle');
delete_option('triggervox_form_disclaimer');
delete_site_option('triggervox_form_disclaimer');
delete_option('triggervox_submit_button_text');
delete_site_option('triggervox_submit_button_text');
delete_option('triggervox_form_admin_only');
delete_site_option('triggervox_form_admin_only');
delete_option('triggervox_form_enable_debug_mode');
delete_site_option('triggervox_form_enable_debug_mode');
delete_option('triggervox_display_rules_type');
delete_site_option('triggervox_display_rules_type');
delete_option('triggervox_display_rules_pages');
delete_site_option('triggervox_display_rules_pages');
delete_option('triggervox_display_rules_excluded_pages');
delete_site_option('triggervox_display_rules_excluded_pages');
delete_option('triggervox_cf7_form_ids');
delete_site_option('triggervox_cf7_form_ids');
delete_option('triggervox_version');
delete_site_option('triggervox_version');
delete_option('triggervox_last_subscription_check');
delete_site_option('triggervox_last_subscription_check');
delete_option('triggervox_manual_urls');
delete_site_option('triggervox_manual_urls');
delete_option('triggervox_excluded_urls');
delete_site_option('triggervox_excluded_urls');
delete_option('triggervox_debug_mode');
delete_site_option('triggervox_debug_mode');
delete_option('triggervox_user_type');
delete_site_option('triggervox_user_type');
delete_option('triggervox_subscription_status');
delete_site_option('triggervox_subscription_status');
delete_option('triggervox_company_data');
delete_site_option('triggervox_company_data');
delete_option('triggervox_wpforms_form_ids');
delete_site_option('triggervox_wpforms_form_ids');
delete_option('triggervox_wpforms_add_to_contacts');
delete_site_option('triggervox_wpforms_add_to_contacts');
delete_option('triggervox_webhook_secret');
delete_site_option('triggervox_webhook_secret');
delete_option('triggervox_nextjs_app_url');
delete_site_option('triggervox_nextjs_app_url');
delete_option('triggervox_public_key');
delete_site_option('triggervox_public_key');
delete_option('triggervox_assistant_id');
delete_site_option('triggervox_assistant_id');
delete_option('triggervox_vapi_key');
delete_site_option('triggervox_vapi_key');
delete_option('ai_call_agent_public_key');
delete_site_option('ai_call_agent_public_key');
delete_option('ai_call_agent_assistant_id');
delete_site_option('ai_call_agent_assistant_id');
delete_option('ai_call_agent_vapi_key');
delete_site_option('ai_call_agent_vapi_key');
delete_option('triggervox_webhook_urls_persistent');
delete_site_option('triggervox_webhook_urls_persistent');
delete_option('triggervox_api_keys_persistent');
delete_site_option('triggervox_api_keys_persistent');
delete_option('triggervox_setup_completed_at');
delete_site_option('triggervox_setup_completed_at');
delete_option('triggervox_script_id');
delete_site_option('triggervox_script_id');

// Delete Transients
delete_transient('triggervox_all_settings_cache');
delete_site_transient('triggervox_all_settings_cache');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_triggervox_analytics_summary_%', '_site_transient_triggervox_analytics_summary_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('triggervox_analytics_all_periods_summary');
delete_site_transient('triggervox_analytics_all_periods_summary');
delete_transient('triggervox_setup_status');
delete_site_transient('triggervox_setup_status');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_triggervox_user_config_%', '_site_transient_triggervox_user_config_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('triggervox_user_config_3');
delete_site_transient('triggervox_user_config_3');
delete_transient('triggervox_failed_logs');
delete_site_transient('triggervox_failed_logs');
delete_transient('triggervox_upgrade_logged_version');
delete_site_transient('triggervox_upgrade_logged_version');
delete_transient('triggervox_webhook_urls');
delete_site_transient('triggervox_webhook_urls');
delete_transient('triggervox_api_keys');
delete_site_transient('triggervox_api_keys');
delete_transient('triggervox_subscription_status');
delete_site_transient('triggervox_subscription_status');
delete_transient('triggervox_api_connection_test');
delete_site_transient('triggervox_api_connection_test');
delete_transient('triggervox_analytics_data');
delete_site_transient('triggervox_analytics_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('triggervox_refresh_webhook_urls');
wp_clear_scheduled_hook('triggervox_cleanup_old_data');
wp_clear_scheduled_hook('triggervox_check_subscription_status');
wp_clear_scheduled_hook('triggervox_sync_analytics');
wp_clear_scheduled_hook('triggervox_backup_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'triggervox_wpforms_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'triggervox_wpforms_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'triggervox_wpforms_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'triggervox_wpforms_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'triggervox_cf7_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'triggervox_cf7_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'triggervox_cf7_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'triggervox_cf7_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'triggervox_plugin_enabled_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'triggervox_plugin_enabled_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'triggervox_plugin_enabled_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'triggervox_plugin_enabled_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'triggervox_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'triggervox_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'triggervox_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'triggervox_setup_notice_dismissed' ) );

