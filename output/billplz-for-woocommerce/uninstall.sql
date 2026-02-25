-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bfw_db_version', 'woocommerce_billplz_settings', 'bfw_api_key_state', 'bfw_collection_id_state', 'bfw_payment_order_collection_id_state', 'billplz_fpx_banks', 'billplz_fpx_banks_last', 'bfw_get_payment_gateways', 'bfw_get_collection_gateways', 'bfw_3_21_7_fix', 'bfw_3_22_0_fix');
DELETE FROM wp_options WHERE option_name LIKE 'bfw_bill_url_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id');

