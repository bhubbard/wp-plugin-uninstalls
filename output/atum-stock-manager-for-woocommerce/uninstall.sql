-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_show_marketplace_suggestions', 'woocommerce_prices_include_tax', 'default_product_cat', 'woocommerce_manage_stock', 'woocommerce_price_num_decimals', 'woocommerce_notify_no_stock_amount', 'woocommerce_currency_pos', 'woocommerce_shipping_tax_class', 'woocommerce_tax_total_display', 'woocommerce_hold_stock_minutes', 'woocommerce_cart_redirect_after_add', 'woocommerce_notify_no_stock', 'woocommerce_notify_low_stock', 'atum_version', 'woocommerce_default_country', 'update_plugins', 'atum-marketing-popup');
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%settings';
DELETE FROM wp_options WHERE option_name LIKE '%last_sales_calc';
DELETE FROM wp_options WHERE option_name LIKE '%count_comments';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('barcode', '_wp_attachment_image_alt', '_children', '_status', '_date_created', '_date_expected', 'atum_admin_footer_text_rated', 'atum-marketing-popup', 'atum-marketing-dash', '_subscription_price', 'note_type', 'note_params', '_use_default_description', '_use_default_terms', '_wcml_custom_prices_status', '_sale_price_dates_from', '_sale_price_dates_to', '_wpml_lang', '_resource_base_costs', '_resource_block_costs');
DELETE FROM wp_usermeta WHERE meta_key IN ('barcode', '_wp_attachment_image_alt', '_children', '_status', '_date_created', '_date_expected', 'atum_admin_footer_text_rated', 'atum-marketing-popup', 'atum-marketing-dash', '_subscription_price', 'note_type', 'note_params', '_use_default_description', '_use_default_terms', '_wcml_custom_prices_status', '_sale_price_dates_from', '_sale_price_dates_to', '_wpml_lang', '_resource_base_costs', '_resource_block_costs');
DELETE FROM wp_termmeta WHERE meta_key IN ('barcode', '_wp_attachment_image_alt', '_children', '_status', '_date_created', '_date_expected', 'atum_admin_footer_text_rated', 'atum-marketing-popup', 'atum-marketing-dash', '_subscription_price', 'note_type', 'note_params', '_use_default_description', '_use_default_terms', '_wcml_custom_prices_status', '_sale_price_dates_from', '_sale_price_dates_to', '_wpml_lang', '_resource_base_costs', '_resource_block_costs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('barcode', '_wp_attachment_image_alt', '_children', '_status', '_date_created', '_date_expected', 'atum_admin_footer_text_rated', 'atum-marketing-popup', 'atum-marketing-dash', '_subscription_price', 'note_type', 'note_params', '_use_default_description', '_use_default_terms', '_wcml_custom_prices_status', '_sale_price_dates_from', '_sale_price_dates_to', '_wpml_lang', '_resource_base_costs', '_resource_block_costs');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'atum-marketing-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'atum-marketing-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'atum-marketing-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atum-marketing-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%dashboard_widgets_layout';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%dashboard_widgets_layout';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%dashboard_widgets_layout';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%dashboard_widgets_layout';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

