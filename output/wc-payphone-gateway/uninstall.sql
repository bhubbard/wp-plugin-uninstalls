-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hold_stock_minutes', 'woocommerce_manage_stock', 'payphone_g_btn_version', 'pp_woo_enabled', 'woocommerce_payphone_settings', 'pp_woo_logoImageUrl', 'pp_woo_paymentAction', 'pp_woo_subtotalMismatchBehavior', 'pp_woo_environment', 'pp_woo_button_size', 'pp_woo_blockEChecks', 'pp_woo_requireBillingAddress', 'pp_woo_logging_enabled', 'payphone_g_btn_bootstrap_warning_message', 'payphone_g_btn_bootstrap_warning_message_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('client_tx_id', 'payphone_tx_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('client_tx_id', 'payphone_tx_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('client_tx_id', 'payphone_tx_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('client_tx_id', 'payphone_tx_id');

