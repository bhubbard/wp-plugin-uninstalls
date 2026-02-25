-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wbpo_qty_box', 'wbpo_main_product_in_cart', 'wbpo_current_group', 'wbpo_price_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('wbpo_qty_box', 'wbpo_main_product_in_cart', 'wbpo_current_group', 'wbpo_price_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('wbpo_qty_box', 'wbpo_main_product_in_cart', 'wbpo_current_group', 'wbpo_price_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wbpo_qty_box', 'wbpo_main_product_in_cart', 'wbpo_current_group', 'wbpo_price_text');

