-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'stripe_express_mode', 'stripe_express_currency', 'stripe_express_live_key', 'stripe_express_live_secret', 'stripe_express_test_key', 'stripe_express_test_secret', 'stripe_express_webhook_secret', 'stripe_express_success_url', 'stripe_express_cancel_url', 'stripe_express_webhook', 'stripe_express_debug', 'stripe_express_keep_data', 'stripe_express_language', 'stripe_express_theme', 'stripe_express_plaid_env', 'stripe_express_plaid_client_name', 'stripe_express_plaid_client_id', 'stripe_express_plaid_secret', 'stripe_express_plaid_products', 'stripe_express_welcome_dismissed', 'stripe_express_email', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

