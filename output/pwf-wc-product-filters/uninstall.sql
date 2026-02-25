-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pwf_style', 'pwf_shop_analytics', 'woocommerce_currency_pos', 'pwf_woo_query_filters', 'pwf_woocommerce_analytic_meta_labels', 'pwf_woocommerce_analytic_range_slider_meta_labels', 'pwf_woocommerce_version', 'pwf_woocommerce_free_version', 'pwf_woocommerce_free_version_update_message', 'pwf_woocommerce_db_version', 'woocommerce_tax_display_shop', 'woocommerce_shop_page_id', 'woocommerce_hide_out_of_stock_items', 'pwf_woo_filter_analytic_languages_list', 'pwf_woo_filter_set_db_for_analytic');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pwf_woo_post_filter');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pwf_woo_post_filter');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pwf_woo_post_filter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pwf_woo_post_filter');

