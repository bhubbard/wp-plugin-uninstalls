-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_data_sync_enabled', 'imma_wm_ads_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('htransaction', 'imma_wm_ads', 'epayco_reference_code', '_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('htransaction', 'imma_wm_ads', 'epayco_reference_code', '_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('htransaction', 'imma_wm_ads', 'epayco_reference_code', '_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('htransaction', 'imma_wm_ads', 'epayco_reference_code', '_transaction_id');

