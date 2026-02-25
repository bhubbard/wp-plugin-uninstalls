-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hpy_variant_sort', 'hpy_disabled_auto_remove_dropdown', 'hpy_variant_respect', 'hpy_variant_then_sort', 'woocommerce_hide_out_of_stock_items', 'hpy_variant_stockLimit', 'hpy_plugin_deferred_admin_notices');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_primary';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_primary';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_primary';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_primary';

