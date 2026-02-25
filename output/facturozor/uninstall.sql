-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_facturozor_active', 'wc_facturozor_api_key', 'wc_facturozor_modules_fields', 'wc_facturozor_module_customers', 'wc_facturozor_module_products', 'wc_facturozor_module_orders', 'wc_facturozor_modules');
DELETE FROM wp_options WHERE option_name LIKE 'wc_facturozor_module_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_facturozor_id', 'wc_facturozor_last_sync_success', 'wc_facturozor_last_sync_failed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_facturozor_id', 'wc_facturozor_last_sync_success', 'wc_facturozor_last_sync_failed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_facturozor_id', 'wc_facturozor_last_sync_success', 'wc_facturozor_last_sync_failed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_facturozor_id', 'wc_facturozor_last_sync_success', 'wc_facturozor_last_sync_failed');

