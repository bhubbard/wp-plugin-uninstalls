-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elex_bep_filter_checkbox_data', 'eh_bulk_edit_table_row', 'xa_regex_error', 'eh_bulk_edit_choosed_variation_id', 'bulk_edit_filtered_product_ids_for_select_unselect', 'eh_bulk_edit_choosed_product_id', 'xa_bulk_selected_ids', 'woocommerce_dimension_unit', 'woocommerce_weight_unit', 'eh_pricing_discount_product_price_user_role');
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes');

