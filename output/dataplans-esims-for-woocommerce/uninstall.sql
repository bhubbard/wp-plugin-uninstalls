-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dpio_options', 'current_balance_api_product_purchases');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('selected_api_product_plan', 'selected_api_product_plan_purchase_array', 'flag_selected_api_product_plan_purchase_array_inserted', 'selected_api_product_plan_purchase_id', 'selected_api_product_plan_purchase_qrcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('selected_api_product_plan', 'selected_api_product_plan_purchase_array', 'flag_selected_api_product_plan_purchase_array_inserted', 'selected_api_product_plan_purchase_id', 'selected_api_product_plan_purchase_qrcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('selected_api_product_plan', 'selected_api_product_plan_purchase_array', 'flag_selected_api_product_plan_purchase_array_inserted', 'selected_api_product_plan_purchase_id', 'selected_api_product_plan_purchase_qrcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('selected_api_product_plan', 'selected_api_product_plan_purchase_array', 'flag_selected_api_product_plan_purchase_array_inserted', 'selected_api_product_plan_purchase_id', 'selected_api_product_plan_purchase_qrcode');

