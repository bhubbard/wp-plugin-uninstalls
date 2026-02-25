-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppc_product_type', 'ppc_promotion_label', 'ppc_selected_category', 'ppc_order_by', 'ppc_order_sorting', 'ppc_columns_count', 'ppc_product_limit');

