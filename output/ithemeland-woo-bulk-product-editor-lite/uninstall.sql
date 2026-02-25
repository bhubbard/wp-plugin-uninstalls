-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcbe_reset_filter_data_version', 'wcbel-version', 'wcbe_update_table_log', 'it_black_friday_banner_dismissed', 'yikes_woo_reusable_products_tabs_applied', 'yikes_woo_reusable_products_tabs', 'wcbe_meta_fields', 'wcbe_column_fields', 'woo_multi_currency_params', 'wcbe-pro-el-data', 'wcbe_scheduler_version', 'wcbe_pro_last_check_for_update', 'wcbel_some_setting', 'wcbel_usage_track', 'ithemeland_activation_email', 'wcbel_onboarding', 'wcbel_opt_in');
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_error';
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_try_again';
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yith_wcbm_product_meta', 'yikes_woo_products_tabs', 'it_product_disable_discount', 'it_product_hide_price_unregistered', 'it_pricing_product_price_user_role', 'it_pricing_product_add_to_cart_user_role', 'it_pricing_product_hide_user_role', 'wcbe_undo_count', 'wcbe_redo_count', 'yith_cog_cost', 'yith_cog_min_variation_cost', 'yith_cog_max_variation_cost', '_wc_cog_cost', '_wc_cog_min_variation_cost', '_wc_cog_max_variation_cost', '_regular_price_wmcp', '_sale_price_wmcp');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yith_wcbm_product_meta', 'yikes_woo_products_tabs', 'it_product_disable_discount', 'it_product_hide_price_unregistered', 'it_pricing_product_price_user_role', 'it_pricing_product_add_to_cart_user_role', 'it_pricing_product_hide_user_role', 'wcbe_undo_count', 'wcbe_redo_count', 'yith_cog_cost', 'yith_cog_min_variation_cost', 'yith_cog_max_variation_cost', '_wc_cog_cost', '_wc_cog_min_variation_cost', '_wc_cog_max_variation_cost', '_regular_price_wmcp', '_sale_price_wmcp');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yith_wcbm_product_meta', 'yikes_woo_products_tabs', 'it_product_disable_discount', 'it_product_hide_price_unregistered', 'it_pricing_product_price_user_role', 'it_pricing_product_add_to_cart_user_role', 'it_pricing_product_hide_user_role', 'wcbe_undo_count', 'wcbe_redo_count', 'yith_cog_cost', 'yith_cog_min_variation_cost', 'yith_cog_max_variation_cost', '_wc_cog_cost', '_wc_cog_min_variation_cost', '_wc_cog_max_variation_cost', '_regular_price_wmcp', '_sale_price_wmcp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yith_wcbm_product_meta', 'yikes_woo_products_tabs', 'it_product_disable_discount', 'it_product_hide_price_unregistered', 'it_pricing_product_price_user_role', 'it_pricing_product_add_to_cart_user_role', 'it_pricing_product_hide_user_role', 'wcbe_undo_count', 'wcbe_redo_count', 'yith_cog_cost', 'yith_cog_min_variation_cost', 'yith_cog_max_variation_cost', '_wc_cog_cost', '_wc_cog_min_variation_cost', '_wc_cog_max_variation_cost', '_regular_price_wmcp', '_sale_price_wmcp');

