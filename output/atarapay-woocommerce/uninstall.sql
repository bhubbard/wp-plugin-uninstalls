-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_at_atara_settings', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_at_wc_atara_service_provider', '_at_wc_atara_service_provider_commission', '_atara_txn_ref', '_atara_fee', '_atara_currency', '_atara_net', '_wc_atara_save_card', '_atara_status', '_transaction_id', '_at_atara_wc_token', '_atara_change_order_status_by', '_tbz_atara_wc_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('_at_wc_atara_service_provider', '_at_wc_atara_service_provider_commission', '_atara_txn_ref', '_atara_fee', '_atara_currency', '_atara_net', '_wc_atara_save_card', '_atara_status', '_transaction_id', '_at_atara_wc_token', '_atara_change_order_status_by', '_tbz_atara_wc_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('_at_wc_atara_service_provider', '_at_wc_atara_service_provider_commission', '_atara_txn_ref', '_atara_fee', '_atara_currency', '_atara_net', '_wc_atara_save_card', '_atara_status', '_transaction_id', '_at_atara_wc_token', '_atara_change_order_status_by', '_tbz_atara_wc_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_at_wc_atara_service_provider', '_at_wc_atara_service_provider_commission', '_atara_txn_ref', '_atara_fee', '_atara_currency', '_atara_net', '_wc_atara_save_card', '_atara_status', '_transaction_id', '_at_atara_wc_token', '_atara_change_order_status_by', '_tbz_atara_wc_token');

