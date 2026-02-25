-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpify-woo-display-subscription', 'wpify-woo-delivery-days-option-update', 'wpify_delivery_dates_admin_notice_dismissed', 'woocommerce_tax_based_on', 'woocommerce_checkout_company_field', 'woocommerce_bacs_accounts', 'wpify_woo_heureka_xml_categories', 'mapy_cz_api_key', 'wpify_logs_max_files', 'woocommerce_weight_unit', 'woocommerce_version', 'active_sitewide_plugins', 'wpify_core_all_plugins', 'wpify_core_news', 'wpify_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'wpify_woo_heureka_xml_categories_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpify_core_plugin_update_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpify_woo_details', '_wpify_woo_delivery_dates', '_billing_company', '_billing_ic', '_billing_dic', '_billing_dic_dph', 'billing_ic', 'billing_dic', 'billing_dic_dph', '_custom_prices', '_wpify_woo_heureka_product_name', '_wpify_woo_heureka_product', '_wpify_woo_heureka_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpify_woo_details', '_wpify_woo_delivery_dates', '_billing_company', '_billing_ic', '_billing_dic', '_billing_dic_dph', 'billing_ic', 'billing_dic', 'billing_dic_dph', '_custom_prices', '_wpify_woo_heureka_product_name', '_wpify_woo_heureka_product', '_wpify_woo_heureka_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpify_woo_details', '_wpify_woo_delivery_dates', '_billing_company', '_billing_ic', '_billing_dic', '_billing_dic_dph', 'billing_ic', 'billing_dic', 'billing_dic_dph', '_custom_prices', '_wpify_woo_heureka_product_name', '_wpify_woo_heureka_product', '_wpify_woo_heureka_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpify_woo_details', '_wpify_woo_delivery_dates', '_billing_company', '_billing_ic', '_billing_dic', '_billing_dic_dph', 'billing_ic', 'billing_dic', 'billing_dic_dph', '_custom_prices', '_wpify_woo_heureka_product_name', '_wpify_woo_heureka_product', '_wpify_woo_heureka_category');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ic';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ic';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ic';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ic';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dic';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dic';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dic';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dic';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dic_dph';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dic_dph';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dic_dph';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dic_dph';

