-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items', 'woocommerce_default_catalog_orderby', 'woocommerce_enable_reviews', 'wcj_multicurrency_enabled', 'wcj_product_by_user_role_enabled', 'wcj_price_by_user_role_enabled', 'wcj_sorting_enabled', 'wcj_more_sorting_enabled', 'wcj_multicurrency_total_number', 'wcj_product_by_user_role_visibility', 'se_search_field_id', 'se_use_resize_images', 'se_exported_attributes', 'woocommerce_manage_stock', 'woocommerce_notify_no_stock_amount', 'cptui_taxonomies', 'se_custom_taxonomies', 'woocommerce_currency_pos', 'old_value_weglot_langs');
DELETE FROM wp_options WHERE option_name LIKE 'wcj_price_by_user_role_empty_price_%';
DELETE FROM wp_options WHERE option_name LIKE 'wcj_multicurrency_currency_%';
DELETE FROM wp_options WHERE option_name LIKE 'wcj_multicurrency_exchange_rate_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcj_product_by_user_role_visible', 'total_sales', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcj_product_by_user_role_visible', 'total_sales', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcj_product_by_user_role_visible', 'total_sales', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcj_product_by_user_role_visible', 'total_sales', 'thumbnail_id');

