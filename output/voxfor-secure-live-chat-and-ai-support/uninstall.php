<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voxfseli_bot_enabled');
delete_site_option('voxfseli_bot_enabled');
delete_option('voxfseli_bot_welcome_message');
delete_site_option('voxfseli_bot_welcome_message');
delete_option('voxfseli_bot_fallback_message');
delete_site_option('voxfseli_bot_fallback_message');
delete_option('voxfseli_bot_email_enabled');
delete_site_option('voxfseli_bot_email_enabled');
delete_option('voxfseli_bot_require_email');
delete_site_option('voxfseli_bot_require_email');
delete_option('voxfseli_bot_email_collection_message');
delete_site_option('voxfseli_bot_email_collection_message');
delete_option('voxfseli_bot_response_delay');
delete_site_option('voxfseli_bot_response_delay');
delete_option('voxfseli_bot_handover_keywords');
delete_site_option('voxfseli_bot_handover_keywords');
delete_option('voxfseli_bot_max_responses');
delete_site_option('voxfseli_bot_max_responses');
delete_option('voxfseli_use_simple_chat');
delete_site_option('voxfseli_use_simple_chat');
delete_option('voxfseli_settings');
delete_site_option('voxfseli_settings');
delete_option('voxfseli_plugin_activated');
delete_site_option('voxfseli_plugin_activated');
delete_option('voxfseli_analytics_data');
delete_site_option('voxfseli_analytics_data');
delete_option('voxfseli_heartbeat_errors');
delete_site_option('voxfseli_heartbeat_errors');
delete_option('voxfseli_ai_table_check');
delete_site_option('voxfseli_ai_table_check');
delete_option('voxfseli_db_version');
delete_site_option('voxfseli_db_version');
delete_option('voxfseli_widget_settings');
delete_site_option('voxfseli_widget_settings');
delete_option('voxfseli_activation_time');
delete_site_option('voxfseli_activation_time');
delete_option('voxfseli_marketing_spend');
delete_site_option('voxfseli_marketing_spend');
delete_option('voxfseli_agent_hourly_cost');
delete_site_option('voxfseli_agent_hourly_cost');
delete_option('voxfseli_ai_contact_cache');
delete_site_option('voxfseli_ai_contact_cache');
delete_option('voxfseli_knowledge_base_json');
delete_site_option('voxfseli_knowledge_base_json');
delete_option('voxfseli_knowledge_base');
delete_site_option('voxfseli_knowledge_base');
delete_option('voxfseli_auto_responses');
delete_site_option('voxfseli_auto_responses');
delete_option('voxfseli_keyword_responses');
delete_site_option('voxfseli_keyword_responses');
delete_option('voxfseli_automations_enabled');
delete_site_option('voxfseli_automations_enabled');
delete_option('voxfseli_bot_outside_hours_only');
delete_site_option('voxfseli_bot_outside_hours_only');
delete_option('voxfseli_business_hours');
delete_site_option('voxfseli_business_hours');
delete_option('voxfseli_polling_interval');
delete_site_option('voxfseli_polling_interval');
delete_option('voxfseli_presence_tracking');
delete_site_option('voxfseli_presence_tracking');
delete_option('current_theme');
delete_site_option('current_theme');
delete_option('smtp_host');
delete_site_option('smtp_host');
delete_option('voxfseli_file_settings');
delete_site_option('voxfseli_file_settings');
delete_option('voxfseli_mobile_settings');
delete_site_option('voxfseli_mobile_settings');
delete_option('voxfseli_notification_settings');
delete_site_option('voxfseli_notification_settings');
delete_option('voxfseli_theme_compatibility');
delete_site_option('voxfseli_theme_compatibility');
delete_option('voxfseli_disable_user_tracking');
delete_site_option('voxfseli_disable_user_tracking');
delete_option('voxfseli_knowledge_data');
delete_site_option('voxfseli_knowledge_data');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_voxfseli_user_tracking_%', '_site_transient_voxfseli_user_tracking_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('voxfseli_agent_status_cache');
delete_site_transient('voxfseli_agent_status_cache');
delete_transient('voxfseli_agent_status_change_notification');
delete_site_transient('voxfseli_agent_status_change_notification');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_voxfseli_heartbeat_response_%', '_site_transient_voxfseli_heartbeat_response_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_user', '_site_transient_%_user' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_voxfseli_proactive_message_%', '_site_transient_voxfseli_proactive_message_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_voxfseli_proactive_form_%', '_site_transient_voxfseli_proactive_form_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_voxfseli_visitor_department_%', '_site_transient_voxfseli_visitor_department_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_voxfseli_cf7_data_%', '_site_transient_voxfseli_cf7_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('voxfseli_cleanup_files');
wp_clear_scheduled_hook('voxfseli_cleanup_transients');
wp_clear_scheduled_hook('voxfseli_daily_cleanup');
wp_clear_scheduled_hook('voxfseli_process_advanced_analytics');
wp_clear_scheduled_hook('voxfseli_daily_analytics');
wp_clear_scheduled_hook('voxfseli_process_scheduled_automations');
wp_clear_scheduled_hook('voxfseli_cleanup_temp_files');
wp_clear_scheduled_hook('voxfseli_scan_uploaded_files');
wp_clear_scheduled_hook('voxfseli_check_sla_breaches');
wp_clear_scheduled_hook('voxfseli_send_daily_summary');
wp_clear_scheduled_hook('voxfseli_cleanup_old_notifications');
wp_clear_scheduled_hook('voxfseli_cleanup_tracking');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'voxfseli_agent_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'voxfseli_agent_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'voxfseli_agent_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'voxfseli_agent_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'voxfseli_agent_status_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'voxfseli_agent_status_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'voxfseli_agent_status_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'voxfseli_agent_status_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'voxfseli_last_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'voxfseli_last_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'voxfseli_last_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'voxfseli_last_activity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'voxfseli_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'voxfseli_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'voxfseli_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'voxfseli_page_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'voxfseli_last_message_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'voxfseli_last_message_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'voxfseli_last_message_check' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'voxfseli_last_message_check' ) );

