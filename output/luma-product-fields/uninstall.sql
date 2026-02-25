-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('luma_product_fields_flush_rewrite', 'woocommerce_weight_unit', 'woocommerce_dimension_unit');
DELETE FROM wp_options WHERE option_name LIKE '%_flush_rewrite';
DELETE FROM wp_options WHERE option_name LIKE '%enable_migration_tool';
DELETE FROM wp_options WHERE option_name LIKE '%front_end_title';
DELETE FROM wp_options WHERE option_name LIKE '%display_sku';
DELETE FROM wp_options WHERE option_name LIKE '%display_tags';
DELETE FROM wp_options WHERE option_name LIKE '%display_categories';
DELETE FROM wp_options WHERE option_name LIKE '%display_group';
DELETE FROM wp_options WHERE option_name LIKE '%display_global_unique_id';
DELETE FROM wp_options WHERE option_name LIKE 'luma_product_fields_meta_fields_%';

