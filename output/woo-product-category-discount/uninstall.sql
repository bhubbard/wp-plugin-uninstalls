-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcd_tables_created', 'wpcd_category_discount_version', 'wpcd_process_method', 'wpcd_migration_complete', 'wpcd_category_discount', 'wpcd_attr_discount', 'wpcd_brand_discount', 'wpcd_tag_discount', 'cron');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpcd_discount_id', '_wpcd_original_regular_price', '_wpcd_original_sale_price', '_wpcd_original_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpcd_discount_id', '_wpcd_original_regular_price', '_wpcd_original_sale_price', '_wpcd_original_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpcd_discount_id', '_wpcd_original_regular_price', '_wpcd_original_sale_price', '_wpcd_original_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpcd_discount_id', '_wpcd_original_regular_price', '_wpcd_original_sale_price', '_wpcd_original_price');

