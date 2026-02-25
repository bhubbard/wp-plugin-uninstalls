-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('first_activation_version', 'IC_EPC_install', '_wp_session_list', 'ic_epc_first_activation', 'IC_EPC_activation_message', 'implecode_wp_hidden_tooltips', 'implecode_wp_tooltips', 'ic_cat_wizard_woo_choice', 'ic_hidden_notices', 'ic_hidden_boxes', 'ic_epc_tracking_notice', 'ic_cat_recommended_extensions', 'ic_block_woo_template_file', 'ic_allow_woo_template_file', 'archive_multiple_settings', 'single_names', 'archive_names', 'ecommerce_product_catalog_ver', 'product_archive_page_id', 'product_archive', 'sample_product_id', 'old_sort_bar', 'multi_single_options', 'enable_product_listing', 'catalog_lightbox', 'catalog_magnifier', 'default_product_thumbnail', 'ic_default_product_image_id', 'additional_product_archive_id', 'product_breadcrumbs', 'al_permalink_options_update', 'hide_empty_bar_message', 'ic_disable_license_message', 'ic_disable_ic_updater', 'product_currency_settings', 'product_shipping_options_number', 'IC_EPC_activation_message_done', 'product_currency', 'custom_license_code', 'implecode_license_owner', 'no_implecode_license_error', 'license_active_plugins', 'ic_product_hidden_data_upgrade_done', 'archive_template', 'modern_grid_settings', 'classic_grid_settings', 'classic_list_settings', 'design_schemes', 'product_listing_url', 'catalog_image_sizes');
DELETE FROM wp_options WHERE option_name IN ('ic_registered_settings', 'ic_delete_products_uninstall', 'ic_update_product_data_done', 'active_sitewide_plugins', 'ic_epc_allow_tracking', 'ic_epc_tracking_last_send', 'ic_epc_tracking_last_paused_send', 'sidebars_widgets', 'product_attribute', 'product_attribute_label', 'product_attribute_unit', 'product_attributes_number', 'al_display_attributes', 'ic_standard_attributes', 'ic_attributes_compare', 'ic_product_upgrade_done', 'ic_formbuilder_updates', 'shopping_cart_settings', 'customer_panel', 'easy_email', 'shopping_checkout_form', 'cart_form_editor_settings', 'product_variations_settings', 'display_shipping', 'product_shipping_cost', 'product_shipping_label', 'general_shipping_settings', 'product_adder_theme_support_check', 'implecode_hide_plugin_review_info_count', '_ic_welcome_screen_activation_redirect', 'implecode_extensions_data', 'implecode_hide_plugin_review_info', 'implecode_hide_plugin_translation_info', 'ic_doing_update_product_data_loop', 'ic_product_count_cache', 'implecode_new_extensions_data', 'implecode_hide_extensions_box', 'implecode_epc_free_extensions_data');
DELETE FROM wp_options WHERE option_name LIKE 'al_product_cat_image_%';
DELETE FROM wp_options WHERE option_name LIKE 'ic_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'thumbnail_id', '_ic_hidden_content', '_ic_hidden_notices', '_featured', '_ic_hidden_product_data', '_price', 'ic_extensions_box_hidden', '_ic_hidden_boxes', '_menu_item_ic_type', '_menu_item_url', '_size_length', '_size_width', '_size_height', '_weight', '_ic_roles', '_customer_cart', '_customer_data', 'transaction_ids', 'manual_product_ids', 'custom_manual_products', 'product_ids', '_customer_id', '_payment_details', '_customer_license', '_order_products', 'manual_order_product', '_order_summary', '_order_id', 'manual_products', '_order_completed_triggered', '_ic_form_fields', '_pre_name', '_shipping_summary', '_cart_content', '_mpn', '_sku', '_wp_page_template', 'ic_review_hidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'thumbnail_id', '_ic_hidden_content', '_ic_hidden_notices', '_featured', '_ic_hidden_product_data', '_price', 'ic_extensions_box_hidden', '_ic_hidden_boxes', '_menu_item_ic_type', '_menu_item_url', '_size_length', '_size_width', '_size_height', '_weight', '_ic_roles', '_customer_cart', '_customer_data', 'transaction_ids', 'manual_product_ids', 'custom_manual_products', 'product_ids', '_customer_id', '_payment_details', '_customer_license', '_order_products', 'manual_order_product', '_order_summary', '_order_id', 'manual_products', '_order_completed_triggered', '_ic_form_fields', '_pre_name', '_shipping_summary', '_cart_content', '_mpn', '_sku', '_wp_page_template', 'ic_review_hidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'thumbnail_id', '_ic_hidden_content', '_ic_hidden_notices', '_featured', '_ic_hidden_product_data', '_price', 'ic_extensions_box_hidden', '_ic_hidden_boxes', '_menu_item_ic_type', '_menu_item_url', '_size_length', '_size_width', '_size_height', '_weight', '_ic_roles', '_customer_cart', '_customer_data', 'transaction_ids', 'manual_product_ids', 'custom_manual_products', 'product_ids', '_customer_id', '_payment_details', '_customer_license', '_order_products', 'manual_order_product', '_order_summary', '_order_id', 'manual_products', '_order_completed_triggered', '_ic_form_fields', '_pre_name', '_shipping_summary', '_cart_content', '_mpn', '_sku', '_wp_page_template', 'ic_review_hidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'thumbnail_id', '_ic_hidden_content', '_ic_hidden_notices', '_featured', '_ic_hidden_product_data', '_price', 'ic_extensions_box_hidden', '_ic_hidden_boxes', '_menu_item_ic_type', '_menu_item_url', '_size_length', '_size_width', '_size_height', '_weight', '_ic_roles', '_customer_cart', '_customer_data', 'transaction_ids', 'manual_product_ids', 'custom_manual_products', 'product_ids', '_customer_id', '_payment_details', '_customer_license', '_order_products', 'manual_order_product', '_order_summary', '_order_id', 'manual_products', '_order_completed_triggered', '_ic_form_fields', '_pre_name', '_shipping_summary', '_cart_content', '_mpn', '_sku', '_wp_page_template', 'ic_review_hidden');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_filterable';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_filterable';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_filterable';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_filterable';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_variation_values';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_variation_values';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_variation_values';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_variation_values';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_variation_prices';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_variation_prices';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_variation_prices';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_variation_prices';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_variation_shipping';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_variation_shipping';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_variation_shipping';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_variation_shipping';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_variation_label';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_variation_label';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_variation_label';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_variation_label';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_variation_mod';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_variation_mod';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_variation_mod';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_variation_mod';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_variation_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_variation_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_variation_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_variation_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipping%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipping%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipping%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipping%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipping-label%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipping-label%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipping-label%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipping-label%';

