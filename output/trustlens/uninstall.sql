-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trustlens_installed_timestamp', 'auto_update_plugins', 'trustlens_min_orders', 'trustlens_enable_blocking', 'trustlens_enable_dashboard', 'trustlens_enable_order_warning', 'trustlens_block_message', 'trustlens_enable_payment_method_controls', 'trustlens_payment_method_control_segments', 'trustlens_payment_method_control_gateways', 'trustlens_payment_method_control_min_total', 'trustlens_payment_method_control_message', 'trustlens_payment_method_control_velocity_enabled', 'trustlens_payment_method_control_velocity_count', 'trustlens_payment_method_control_velocity_hours', 'trustlens_payment_method_control_linked_risk_enabled', 'trustlens_returns_high_threshold', 'trustlens_returns_critical_threshold', 'trustlens_module_returns_enabled', 'trustlens_module_orders_enabled', 'trustlens_module_coupons_enabled', 'trustlens_module_categories_enabled', 'trustlens_module_linked_accounts_enabled', 'trustlens_linked_accounts_penalty', 'trustlens_module_chargebacks_enabled', 'trustlens_chargebacks_auto_block', 'trustlens_coupons_block_linked_abuse', 'trustlens_coupons_max_first_order', 'trustlens_notification_email', 'trustlens_enable_automation', 'trustlens_enable_webhooks', 'trustlens_webhook_events', 'trustlens_enable_scheduled_reports', 'trustlens_report_email', 'trustlens_remove_data_on_uninstall', 'trustlens_api_key', 'trustlens_sync_status', 'trustlens_automation_rules', 'trustlens_report_schedules', 'trustlens_enable_notifications', 'trustlens_notify_blocked_checkout', 'trustlens_notify_welcome_summary', 'trustlens_notify_weekly_summary', 'trustlens_welcome_summary_sent', 'trustlens_db_version', 'trustlens_segment_thresholds', 'trustlens_category_weights', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period');
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'trustlens_activated', 'wstl_segment_counts', 'wstl_high_risk_10', 'wstl_high_risk_25', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'trustlens_bulk_job_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_trustlens_first_order_coupon');
DELETE FROM wp_usermeta WHERE meta_key IN ('_trustlens_first_order_coupon');
DELETE FROM wp_termmeta WHERE meta_key IN ('_trustlens_first_order_coupon');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_trustlens_first_order_coupon');

