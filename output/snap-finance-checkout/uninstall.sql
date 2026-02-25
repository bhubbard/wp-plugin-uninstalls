-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_snap_finance_settings', 'woocommerce_tax_round_at_subtotal', 'snap_finance_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_applicationId', '_sku', '_snap_order', '_order_deliveryDate', '_final_responce', 'full_error', '_application');
DELETE FROM wp_usermeta WHERE meta_key IN ('_applicationId', '_sku', '_snap_order', '_order_deliveryDate', '_final_responce', 'full_error', '_application');
DELETE FROM wp_termmeta WHERE meta_key IN ('_applicationId', '_sku', '_snap_order', '_order_deliveryDate', '_final_responce', 'full_error', '_application');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_applicationId', '_sku', '_snap_order', '_order_deliveryDate', '_final_responce', 'full_error', '_application');

