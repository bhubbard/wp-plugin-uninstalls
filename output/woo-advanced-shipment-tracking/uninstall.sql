-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ast_review_update_ignore_388', 'ast_notice_ignore_39', 'wc_ast_api_date_range', 'ast_usage_data_selector', 'customizer_partial_shipped_order_settings_enabled', 'woocommerce_customer_partial_shipped_order_settings', 'woocommerce_customer_updated_tracking_order_settings', 'wc_ast_default_provider', 'wc_ast_unclude_tracking_info', 'wc_ast_show_orders_actions', 'wc_advanced_shipment_tracking', 'tracking_info_settings', 'ast_option_migrated', 'wc_ast_status_shipped', 'wc_ast_status_partial_shipped', 'wc_ast_status_partial_shipped_label_color', 'wc_ast_status_partial_shipped_label_font_color', 'wc_ast_status_delivered', 'wc_ast_api_date_format', 'wcast_enable_partial_shipped_email', 'wc_ast_status_label_color', 'wc_ast_status_label_font_color', 'autocomplete_order_tpi', 'wc_ast_status_updated_tracking', 'wc_ast_status_updated_tracking_label_color', 'wc_ast_status_updated_tracking_label_font_color', 'wcast_enable_updated_tracking_email', 'ast_trackship_notice_ignore', 'ast_pro_shipping_integration_notice_ignore', 'zorem_return_update_ignore_385', 'alg_wc_custom_order_numbers_enabled', 'alg_wc_custom_order_numbers_prefix', 'wcj_order_numbers_enabled', 'wcj_order_number_prefix', 'wcj_order_number_date_prefix', 'wcj_order_number_suffix', 'wcj_order_number_date_suffix', 'wpla_use_amazon_order_number', 'order_preview', 'orderStatus', '_ast_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_order_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_shipment_tracking_items', 'shipping_first_name', 'shipping_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_shipment_tracking_items', 'shipping_first_name', 'shipping_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_shipment_tracking_items', 'shipping_first_name', 'shipping_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_shipment_tracking_items', 'shipping_first_name', 'shipping_last_name');

