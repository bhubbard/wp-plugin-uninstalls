-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_code_db_updated', 'product_code_second_show', 'product_code_text', 'product_code_text_second', 'product_code_quik_edit_text', 'product_code_quik_edit_text_second', 'product_code_hide_empty_field', 'pcfw_hide_wc_gtin_field', 'product_code', 'product_code_second', 'pcfw_hide_from_customer_orders', 'pcfw_structure_data', 'pcfw_structured_data_field', 'hide_product_code_on_user_side', 'hide_second_product_code_on_user_side', 'product_code_for_admin', 'pcfw_delete_data_on_uninstall', 'product_code_update', 'product_code_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pcfw_notice_clicked', 'pcfw_notice_last_time', '_product_code', '_product_code_second');
DELETE FROM wp_usermeta WHERE meta_key IN ('pcfw_notice_clicked', 'pcfw_notice_last_time', '_product_code', '_product_code_second');
DELETE FROM wp_termmeta WHERE meta_key IN ('pcfw_notice_clicked', 'pcfw_notice_last_time', '_product_code', '_product_code_second');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pcfw_notice_clicked', 'pcfw_notice_last_time', '_product_code', '_product_code_second');

