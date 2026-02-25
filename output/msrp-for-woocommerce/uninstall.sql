-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_num_decimals', 'alg_wc_bulk_price_converter_step', 'alg_wc_msrp_plugin_enabled', 'alg_wc_msrp_admin_field_label', 'woocommerce_version', 'alg_wc_msrp_advanced_hide_for_empty_price', 'alg_wc_msrp_admin_add_products_column', 'alg_wc_msrp_admin_add_quick_edit', 'alg_wc_msrp_admin_add_bulk_edit', 'alg_wc_msrp_admin_quick_bulk_edit_position', 'alg_wc_msrp_countries', 'alg_wc_msrp_countries_currencies', 'woocommerce_default_country', 'alg_wc_msrp_currencies', 'alg_wc_msrp_apply_price_filter', 'alg_wc_msrp_display_cart_total_savings_positions', 'alg_wc_msrp_display_cart_total_savings_template', 'alg_wc_msrp_variable_optimization', 'alg_wc_msrp_hide_regular_price_for_sale_products', 'alg_wc_msrp_custom_range_format_enabled', 'alg_wc_msrp_custom_range_format', 'woocommerce_hide_out_of_stock_items', 'alg_wc_msrp_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_text_format';
DELETE FROM wp_options WHERE option_name LIKE '%_position';
DELETE FROM wp_options WHERE option_name LIKE '%_you_save';
DELETE FROM wp_options WHERE option_name LIKE '%_you_save_percent';
DELETE FROM wp_options WHERE option_name LIKE '%_you_save_percent_round';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_alg_msrp', '_alg_msrp_by_country', '_alg_msrp_by_currency');
DELETE FROM wp_usermeta WHERE meta_key IN ('_alg_msrp', '_alg_msrp_by_country', '_alg_msrp_by_currency');
DELETE FROM wp_termmeta WHERE meta_key IN ('_alg_msrp', '_alg_msrp_by_country', '_alg_msrp_by_currency');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_alg_msrp', '_alg_msrp_by_country', '_alg_msrp_by_currency');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

