-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ot_css_file_paths', 'woocommerce_cart_redirect_after_add', 'qcld_express_options', 'qcld_woo_minmax_enable_plugin', 'qcld_woo_minmax_dynamic_pricing_setting', 'woocommerce_weight_unit', 'woocommerce_currency', 'woocommerce_db_version', 'qcld_express_plugin_do_activation_redirect', 'woocommerce_enable_lightbox', 'woocommerce_enable_ajax_add_to_cart', 'woocommerce_enable_guest_checkout', 'qcld_woo_minmax_category_quantity_limit', 'qcld_woo_minmax_tag_quantity_limit', 'qcld_woo_minmax_product_quantity_limit', 'qcld_woo_minmax_product_minimum_quantity', 'qcld_woo_minmax_product_maximum_quantity', 'qcld_woo_minmax_product_step_quantity');
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_minimum_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_maximum_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_tag_step_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_minimum_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_maximum_%';
DELETE FROM wp_options WHERE option_name LIKE 'qcld_woo_minmax_category_step_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_format_link_url', '_format_quote_source_url', '_price', '_stock', '_stock_status', '_qcld_woo_minmax_category_exclusion', '_qcld_woo_minmax_tag_exclusion');
DELETE FROM wp_usermeta WHERE meta_key IN ('_format_link_url', '_format_quote_source_url', '_price', '_stock', '_stock_status', '_qcld_woo_minmax_category_exclusion', '_qcld_woo_minmax_tag_exclusion');
DELETE FROM wp_termmeta WHERE meta_key IN ('_format_link_url', '_format_quote_source_url', '_price', '_stock', '_stock_status', '_qcld_woo_minmax_category_exclusion', '_qcld_woo_minmax_tag_exclusion');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_format_link_url', '_format_quote_source_url', '_price', '_stock', '_stock_status', '_qcld_woo_minmax_category_exclusion', '_qcld_woo_minmax_tag_exclusion');
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

