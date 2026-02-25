<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('momo_acg_openai_settings');
delete_site_option('momo_acg_openai_settings');
delete_option('momo_rssfeed_openai_settings');
delete_site_option('momo_rssfeed_openai_settings');
delete_option('momo_autoblog_openai_settings');
delete_site_option('momo_autoblog_openai_settings');
delete_option('momo_acg_rssfeed_event_list');
delete_site_option('momo_acg_rssfeed_event_list');
delete_option('momo_acg_scw_event_list');
delete_site_option('momo_acg_scw_event_list');
delete_option('momo_acg_chatbot_settings');
delete_site_option('momo_acg_chatbot_settings');
delete_option('momo_acg_cb_trainings_list');
delete_site_option('momo_acg_cb_trainings_list');
delete_option('momo_acg_cb_trainings_settings');
delete_site_option('momo_acg_cb_trainings_settings');
delete_option('momo_acgwc_cb_trainings_settings');
delete_site_option('momo_acgwc_cb_trainings_settings');
delete_option('momo_acg_cb_dashboard_contents');
delete_site_option('momo_acg_cb_dashboard_contents');
delete_option('momo_chatgpt_openai_settings');
delete_site_option('momo_chatgpt_openai_settings');
delete_option('momo_acg_blocks_settings');
delete_site_option('momo_acg_blocks_settings');
delete_option('momo_acg_general_settings');
delete_site_option('momo_acg_general_settings');
delete_option('momo_acg_credit_system_settings');
delete_site_option('momo_acg_credit_system_settings');
delete_option('woocommerce_myaccount_page_id');
delete_site_option('woocommerce_myaccount_page_id');
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
delete_option('momo_wsw_api_cache_settings');
delete_site_option('momo_wsw_api_cache_settings');
delete_option('momo_acg_wc_openai_settings');
delete_site_option('momo_acg_wc_openai_settings');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('momo_acg_trainings_embeddings_hook');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_acg_credit_plan_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_acg_credit_plan_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_acg_credit_plan_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_acg_credit_plan_enabled' ) );

