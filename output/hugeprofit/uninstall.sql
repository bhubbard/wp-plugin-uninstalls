-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hugeprofit_api_token', 'hugeprofit_sync_in_progress', 'hugeprofit_crm_url', 'hugeprofit_background_token_import', 'hugeprofit_background_token_export', 'hugeprofit_server_error', 'hugeprofit_integration_id', 'hugeprofit_cron_check', 'hugeprofit_cron_check_time', 'hugeprofit_force_alternative_method', 'hugeprofit_user_token', 'hugeprofit_user_id', 'hugeprofit_ident', 'hugeprofit_auto_sync', 'hugeprofit_reference_info');
DELETE FROM wp_options WHERE option_name LIKE 'hugeprofit_background_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hugeprofit_cost_price', '_hugeprofit_product_id', '_hugeprofit_synthetic_parent_for_hp_id', '_hugeprofit_test_id', '_hugeprofit_barcode', '_hugeprofit_image_hash', '_global_unique_id', '_hugeprofit_sync_lock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hugeprofit_cost_price', '_hugeprofit_product_id', '_hugeprofit_synthetic_parent_for_hp_id', '_hugeprofit_test_id', '_hugeprofit_barcode', '_hugeprofit_image_hash', '_global_unique_id', '_hugeprofit_sync_lock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hugeprofit_cost_price', '_hugeprofit_product_id', '_hugeprofit_synthetic_parent_for_hp_id', '_hugeprofit_test_id', '_hugeprofit_barcode', '_hugeprofit_image_hash', '_global_unique_id', '_hugeprofit_sync_lock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hugeprofit_cost_price', '_hugeprofit_product_id', '_hugeprofit_synthetic_parent_for_hp_id', '_hugeprofit_test_id', '_hugeprofit_barcode', '_hugeprofit_image_hash', '_global_unique_id', '_hugeprofit_sync_lock');

