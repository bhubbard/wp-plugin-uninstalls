<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trustlens_installed_timestamp');
delete_site_option('trustlens_installed_timestamp');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('trustlens_min_orders');
delete_site_option('trustlens_min_orders');
delete_option('trustlens_enable_blocking');
delete_site_option('trustlens_enable_blocking');
delete_option('trustlens_enable_dashboard');
delete_site_option('trustlens_enable_dashboard');
delete_option('trustlens_enable_order_warning');
delete_site_option('trustlens_enable_order_warning');
delete_option('trustlens_block_message');
delete_site_option('trustlens_block_message');
delete_option('trustlens_enable_payment_method_controls');
delete_site_option('trustlens_enable_payment_method_controls');
delete_option('trustlens_payment_method_control_segments');
delete_site_option('trustlens_payment_method_control_segments');
delete_option('trustlens_payment_method_control_gateways');
delete_site_option('trustlens_payment_method_control_gateways');
delete_option('trustlens_payment_method_control_min_total');
delete_site_option('trustlens_payment_method_control_min_total');
delete_option('trustlens_payment_method_control_message');
delete_site_option('trustlens_payment_method_control_message');
delete_option('trustlens_payment_method_control_velocity_enabled');
delete_site_option('trustlens_payment_method_control_velocity_enabled');
delete_option('trustlens_payment_method_control_velocity_count');
delete_site_option('trustlens_payment_method_control_velocity_count');
delete_option('trustlens_payment_method_control_velocity_hours');
delete_site_option('trustlens_payment_method_control_velocity_hours');
delete_option('trustlens_payment_method_control_linked_risk_enabled');
delete_site_option('trustlens_payment_method_control_linked_risk_enabled');
delete_option('trustlens_returns_high_threshold');
delete_site_option('trustlens_returns_high_threshold');
delete_option('trustlens_returns_critical_threshold');
delete_site_option('trustlens_returns_critical_threshold');
delete_option('trustlens_module_returns_enabled');
delete_site_option('trustlens_module_returns_enabled');
delete_option('trustlens_module_orders_enabled');
delete_site_option('trustlens_module_orders_enabled');
delete_option('trustlens_module_coupons_enabled');
delete_site_option('trustlens_module_coupons_enabled');
delete_option('trustlens_module_categories_enabled');
delete_site_option('trustlens_module_categories_enabled');
delete_option('trustlens_module_linked_accounts_enabled');
delete_site_option('trustlens_module_linked_accounts_enabled');
delete_option('trustlens_linked_accounts_penalty');
delete_site_option('trustlens_linked_accounts_penalty');
delete_option('trustlens_module_chargebacks_enabled');
delete_site_option('trustlens_module_chargebacks_enabled');
delete_option('trustlens_chargebacks_auto_block');
delete_site_option('trustlens_chargebacks_auto_block');
delete_option('trustlens_coupons_block_linked_abuse');
delete_site_option('trustlens_coupons_block_linked_abuse');
delete_option('trustlens_coupons_max_first_order');
delete_site_option('trustlens_coupons_max_first_order');
delete_option('trustlens_notification_email');
delete_site_option('trustlens_notification_email');
delete_option('trustlens_enable_automation');
delete_site_option('trustlens_enable_automation');
delete_option('trustlens_enable_webhooks');
delete_site_option('trustlens_enable_webhooks');
delete_option('trustlens_webhook_events');
delete_site_option('trustlens_webhook_events');
delete_option('trustlens_enable_scheduled_reports');
delete_site_option('trustlens_enable_scheduled_reports');
delete_option('trustlens_report_email');
delete_site_option('trustlens_report_email');
delete_option('trustlens_remove_data_on_uninstall');
delete_site_option('trustlens_remove_data_on_uninstall');
delete_option('trustlens_api_key');
delete_site_option('trustlens_api_key');
delete_option('trustlens_sync_status');
delete_site_option('trustlens_sync_status');
delete_option('trustlens_automation_rules');
delete_site_option('trustlens_automation_rules');
delete_option('trustlens_report_schedules');
delete_site_option('trustlens_report_schedules');
delete_option('trustlens_enable_notifications');
delete_site_option('trustlens_enable_notifications');
delete_option('trustlens_notify_blocked_checkout');
delete_site_option('trustlens_notify_blocked_checkout');
delete_option('trustlens_notify_welcome_summary');
delete_site_option('trustlens_notify_welcome_summary');
delete_option('trustlens_notify_weekly_summary');
delete_site_option('trustlens_notify_weekly_summary');
delete_option('trustlens_welcome_summary_sent');
delete_site_option('trustlens_welcome_summary_sent');
delete_option('trustlens_db_version');
delete_site_option('trustlens_db_version');
delete_option('trustlens_segment_thresholds');
delete_site_option('trustlens_segment_thresholds');
delete_option('trustlens_category_weights');
delete_site_option('trustlens_category_weights');
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

// Delete Transients
delete_transient('trustlens_activated');
delete_site_transient('trustlens_activated');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_trustlens_bulk_job_%', '_site_transient_trustlens_bulk_job_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wstl_segment_counts');
delete_site_transient('wstl_segment_counts');
delete_transient('wstl_high_risk_10');
delete_site_transient('wstl_high_risk_10');
delete_transient('wstl_high_risk_25');
delete_site_transient('wstl_high_risk_25');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('trustlens/welcome_summary');
wp_clear_scheduled_hook('trustlens/daily_cleanup');
wp_clear_scheduled_hook('trustlens/daily_digest');
wp_clear_scheduled_hook('trustlens/monthly_report');
wp_clear_scheduled_hook('trustlens/weekly_summary');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_trustlens_first_order_coupon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_trustlens_first_order_coupon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_trustlens_first_order_coupon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_trustlens_first_order_coupon' ) );

