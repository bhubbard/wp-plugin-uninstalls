-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('paytiko_enable_auto_cleaner', 'paytiko_interval_clearing', 'paytiko_auto_cleaner_first_init', 'paytiko_enable_subscription', 'paytiko_plan_name', 'paytiko_billing_interval', 'paytiko_interval_count', 'woocommerce_dummy_settings', 'woocommerce_paytiko_gateway_settings', 'paytiko_payout_table_created');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_paytiko_tab_field', 'paytiko_transact_id', 'payment_processor', 'external_transaction_id', 'status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_paytiko_tab_field', 'paytiko_transact_id', 'payment_processor', 'external_transaction_id', 'status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_paytiko_tab_field', 'paytiko_transact_id', 'payment_processor', 'external_transaction_id', 'status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_paytiko_tab_field', 'paytiko_transact_id', 'payment_processor', 'external_transaction_id', 'status');

