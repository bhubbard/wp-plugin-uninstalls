-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppse_owner_email', 'ppse_exchange_processor_url', 'ppse_transaction_satoshi_min', 'ppse_transaction_satoshi_max', 'ppse_profit_percent', 'ppse_profit_fiat', 'ppse_official_rate', 'ppse_paypal_email', 'ppse_satoshi_api_key', 'ppse_satoshi_balance', 'ppse_offline_message', 'ppse_system_ready', 'ppse_force_offline', 'ppse_official_rate_checked', 'ppse_official_rate_check_errors', 'ppse_notify_error', 'ppse_notify_warning', 'ppse_notify_transaction');

