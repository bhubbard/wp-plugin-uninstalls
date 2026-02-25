-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wallet_up_settings', 'wallet_up_transfer_call', 'wallet_up_display_settings', 'wallet_up_business_card_data', 'wallet_up_log_config', 'wallet_up_db_version', 'wallet_up_version', 'wallet_up_version_backup', 'wallet_up_migration_log', 'wallet_up_wc_version', 'wallet_up_wc_settings', 'wallet_up_transactions_table_version', 'wallet_up_enabled_methods', 'wallet_up_encryption_key', 'wallet_up_flush_rules', 'wallet_up_quick_access_count', 'wallet_up_activated', 'wallet_up_transient_registry', 'wallet_up_woocommerce_display_settings', 'woocommerce_settings', 'woocommerce_currency_pos', 'wallet_up_woo_settings', 'wallet_up_wpforms_template_enabled', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wallet_up_compatibility_issues', 'wallet_up_activation_redirect', 'wallet_up_preview_data', 'wallet_up_business_card_data', 'wallet_up_premium_status_check', 'wallet_up_last_backup_time', 'wc_blocks_payment_method_type_registry', 'wc_gateway_wallet_up_initialized', 'wpforms_templates', 'wpforms_available_templates', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wallet_up_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('wallet_up_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('wallet_up_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wallet_up_dismissed_notices');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_notice';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_notice';

