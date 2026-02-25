-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aicoso_bulk_prod_price_plugin_enable', '_aicoso_bulk_prod_price_bulk_prod_price_cats_ids', '_aicoso_bulk_prod_price_bulk_prod_price_products_ids', 'aicoso_bulk_prod_price_tax_enable', 'aicoso_bulk_prod_price_ftable_enable', '_aicoso_bulk_prod_price_cats_ids', '_aicoso_bulk_prod_price_selected_products_id', '_aicoso_bulk_prod_price_qty_min_max', '_aicoso_bulk_prod_price_products_ids', 'aicoso_bulk_prod_price_table_thead_border', 'aicoso_bulk_prod_price_table_thead_bg', 'aicoso_bulk_prod_price_table_thead_text', 'aicoso_bulk_prod_price_table_tbody_border', 'aicoso_bulk_prod_price_table_tbody_bg', 'aicoso_bulk_prod_price_table_tbody_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aicoso_bulk_prod_price_per_quantity', '_aicoso_bulk_prod_price_quantity_pricing');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aicoso_bulk_prod_price_per_quantity', '_aicoso_bulk_prod_price_quantity_pricing');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aicoso_bulk_prod_price_per_quantity', '_aicoso_bulk_prod_price_quantity_pricing');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aicoso_bulk_prod_price_per_quantity', '_aicoso_bulk_prod_price_quantity_pricing');

