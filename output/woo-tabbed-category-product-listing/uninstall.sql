-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_number', 'max_char_per_cat', 'column_number', 'selected_categories', 'qc_woo_tabbed_enable_category_image', 'qc_woo_tabbed_display_category_url_based', 'category_order', 'qcld_orderby_product', 'order_product_by', 'qcld_use_category_tab', 'qc_woo_tabbed_scroll_category_clickable', 'qc_woo_tabbed_shortcode_preview', 'qc_woo_tabbed_show_empty_category', 'qc_woo_tabbed_show_empty_category_msg', 'custom_global_css', 'woocommerce_db_version', 'woocommerce_hide_out_of_stock_items', 'woo_tabbed_plugin_do_activation_redirect', 'qc_woo_tabbed_display_category_image_top', 'qcld_woo_minmax_dynamic_pricing_setting', 'woocommerce_weight_unit', 'woocommerce_currency', 'qcld_woo_minmax_category_quantity_limit', 'qcld_woo_minmax_tag_quantity_limit', 'qcld_woo_minmax_product_quantity_limit', 'qcld_woo_minmax_product_minimum_quantity', 'qcld_woo_minmax_product_maximum_quantity', 'qcld_woo_minmax_product_step_quantity');
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_minimum_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_maximum_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_step_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_minimum_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_maximum_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_step_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', '_qcld_woo_minmax_category_exclusion', '_qcld_woo_minmax_tag_exclusion');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', '_qcld_woo_minmax_category_exclusion', '_qcld_woo_minmax_tag_exclusion');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', '_qcld_woo_minmax_category_exclusion', '_qcld_woo_minmax_tag_exclusion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', '_qcld_woo_minmax_category_exclusion', '_qcld_woo_minmax_tag_exclusion');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_limit_override';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_limit_override';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_limit_override';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_limit_override';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_minimum_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_maximum_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_tag_step_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_minimum_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_maximum_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qcld_woo_minmax_category_step_%';

