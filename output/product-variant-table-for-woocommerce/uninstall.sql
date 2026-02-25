-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pvtfw_variant_table_columns', 'pvtfw_variant_table_tab', 'pvtfw_variant_table_place', 'pvtfw_variant_table_show_table_header', 'pvtfw_variant_table_show_available_options_btn', 'pvtfw_variant_table_show_available_options_text', 'pvtfw_variant_table_qty_layout', 'pvtfw_variant_table_sub_total', 'pvtfw_variant_table_scroll_to_top', 'pvtfw_variant_table_cart_notice', 'pvtfw_variant_table_full_table', 'pvtfw_variant_table_scrollable_x', 'pvtfw_variant_table_min_width', 'woocommerce_calc_taxes', 'woocommerce_tax_display_shop', 'whols_options', 'pvtfw_woocommerce_cart_redirect_after_add', 'woocommerce_cart_redirect_after_add', 'pvtfw_variant_table_available_options_btn_text', 'pvtfw_variant_table_cart_btn_text', 'woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals');

