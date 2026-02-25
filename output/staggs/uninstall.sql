-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgg_acf_pro_active', 'staggs_admin_notices', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '_sgg_configurator_smart_nodes_lookup', 'woocommerce_price_decimal_sep', 'woocommerce_currency_pos', 'woocommerce_price_thousand_sep', 'woocommerce_price_num_decimals', 'woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'woocommerce_tax_display_shop', 'woocommerce_cart_redirect_after_add', 'ywraq_quote_my_account_hide_price_new_quote', 'ywraq_hide_price', 'woocommerce_weight_unit', 'qlwcdc_add_to_cart_redirect_page', 'woocommerce_myaccount_page_id', 'carbon_custom_sidebars', 'staggs_total_results', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'staggs_attribute_values', 'staggs_attribute_conditional_values', 'staggs_attribute_conditional_inputs', 'staggs_simple_product_list', 'staggs_configurable_product_list', 'staggs_product_tabs');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'staggs_analytics_order_%';
DELETE FROM wp_options WHERE option_name LIKE 'staggs_attribute_conditional_labels_%';
DELETE FROM wp_options WHERE option_name LIKE 'sgg_formatted_attribute_%';
DELETE FROM wp_options WHERE option_name LIKE 'staggs_attribute_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'staggs_attribute_conditional_values_%';
DELETE FROM wp_options WHERE option_name LIKE 'staggs_attribute_conditional_inputs_%';
DELETE FROM wp_options WHERE option_name LIKE 'sgg_product_configurator_theme_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'sgg_configurator_page_template_%';
DELETE FROM wp_options WHERE option_name LIKE 'sgg_configurator_view_layout_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_configurable', 'sgg_configurator_attributes', '_sgg_configurator_attributes', '_regular_price', '_sale_price', '_manage_stock', '_stock_status', '_backorders', '_weight', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_configurable', 'sgg_configurator_attributes', '_sgg_configurator_attributes', '_regular_price', '_sale_price', '_manage_stock', '_stock_status', '_backorders', '_weight', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_configurable', 'sgg_configurator_attributes', '_sgg_configurator_attributes', '_regular_price', '_sale_price', '_manage_stock', '_stock_status', '_backorders', '_weight', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_configurable', 'sgg_configurator_attributes', '_sgg_configurator_attributes', '_regular_price', '_sale_price', '_manage_stock', '_stock_status', '_backorders', '_weight', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

