-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip2oz_keeplogs', 'ip2oz_disable_notices', 'ip2oz_group_content', 'ip2oz_settings_arr', 'ip2oz_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_keeplogs';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ip2oz_ozon_category_id', '_ts_gtin', 'usbs_barcode_field', '_alg_ean', '_ip2oz_tn_ved_code', 'ip2oz_ozon_attribute_name_id', 'ip2oz_ozon_attribute_value_id', '_ip2oz_weight', '_ip2oz_length', '_ip2oz_width', '_ip2oz_height', '_ip2oz_vat', '_ip2oz_prod_id_on_ozon', '_ip2oz_prod_archive_status', '_ip2oz_task_id', 'rank_math_primary_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('ip2oz_ozon_category_id', '_ts_gtin', 'usbs_barcode_field', '_alg_ean', '_ip2oz_tn_ved_code', 'ip2oz_ozon_attribute_name_id', 'ip2oz_ozon_attribute_value_id', '_ip2oz_weight', '_ip2oz_length', '_ip2oz_width', '_ip2oz_height', '_ip2oz_vat', '_ip2oz_prod_id_on_ozon', '_ip2oz_prod_archive_status', '_ip2oz_task_id', 'rank_math_primary_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('ip2oz_ozon_category_id', '_ts_gtin', 'usbs_barcode_field', '_alg_ean', '_ip2oz_tn_ved_code', 'ip2oz_ozon_attribute_name_id', 'ip2oz_ozon_attribute_value_id', '_ip2oz_weight', '_ip2oz_length', '_ip2oz_width', '_ip2oz_height', '_ip2oz_vat', '_ip2oz_prod_id_on_ozon', '_ip2oz_prod_archive_status', '_ip2oz_task_id', 'rank_math_primary_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ip2oz_ozon_category_id', '_ts_gtin', 'usbs_barcode_field', '_alg_ean', '_ip2oz_tn_ved_code', 'ip2oz_ozon_attribute_name_id', 'ip2oz_ozon_attribute_value_id', '_ip2oz_weight', '_ip2oz_length', '_ip2oz_width', '_ip2oz_height', '_ip2oz_vat', '_ip2oz_prod_id_on_ozon', '_ip2oz_prod_archive_status', '_ip2oz_task_id', 'rank_math_primary_category');

