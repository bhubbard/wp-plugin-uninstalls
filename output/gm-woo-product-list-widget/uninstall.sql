-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gmwplw_select_type', 'gmwplw_product_show', 'gmwplw_show_per_column', 'gmwplw_thum', 'gmwplw_order_by', 'gmwplw_order', 'gmwplw_select_tax_val', 'gmwplw_layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('gmwplw_select_type', 'gmwplw_product_show', 'gmwplw_show_per_column', 'gmwplw_thum', 'gmwplw_order_by', 'gmwplw_order', 'gmwplw_select_tax_val', 'gmwplw_layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('gmwplw_select_type', 'gmwplw_product_show', 'gmwplw_show_per_column', 'gmwplw_thum', 'gmwplw_order_by', 'gmwplw_order', 'gmwplw_select_tax_val', 'gmwplw_layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gmwplw_select_type', 'gmwplw_product_show', 'gmwplw_show_per_column', 'gmwplw_thum', 'gmwplw_order_by', 'gmwplw_order', 'gmwplw_select_tax_val', 'gmwplw_layout');

