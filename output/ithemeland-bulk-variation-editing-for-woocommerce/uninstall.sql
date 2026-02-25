-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iwbvel_reset_filter_data_version', 'iwbvel-version', 'iwbve_update_table_log', 'iwbvel_meta_fields', 'iwbvel_column_fields', 'woo_multi_currency_params', 'yikes_woo_reusable_products_tabs_applied', 'yikes_woo_reusable_products_tabs', 'itbbc_scheduler_version', 'iwbvel_some_setting', 'iwbvel_usage_track', 'ithemeland_activation_email', 'iwbvel_onboarding', 'iwbvel_opt_in');
DELETE FROM wp_options WHERE option_name LIKE '%-el-data';
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_error';
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_background_process_try_again';
DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yith_wcbm_product_meta', 'yikes_woo_products_tabs', 'it_product_disable_discount', 'it_product_hide_price_unregistered', 'it_pricing_product_price_user_role', 'it_pricing_product_add_to_cart_user_role', 'it_pricing_product_hide_user_role', 'yith_cog_cost', 'yith_cog_min_variation_cost', 'yith_cog_max_variation_cost', '_wc_cog_cost', '_wc_cog_min_variation_cost', '_wc_cog_max_variation_cost', '_regular_price_wmcp', '_sale_price_wmcp', 'iwbvel_undo_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yith_wcbm_product_meta', 'yikes_woo_products_tabs', 'it_product_disable_discount', 'it_product_hide_price_unregistered', 'it_pricing_product_price_user_role', 'it_pricing_product_add_to_cart_user_role', 'it_pricing_product_hide_user_role', 'yith_cog_cost', 'yith_cog_min_variation_cost', 'yith_cog_max_variation_cost', '_wc_cog_cost', '_wc_cog_min_variation_cost', '_wc_cog_max_variation_cost', '_regular_price_wmcp', '_sale_price_wmcp', 'iwbvel_undo_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yith_wcbm_product_meta', 'yikes_woo_products_tabs', 'it_product_disable_discount', 'it_product_hide_price_unregistered', 'it_pricing_product_price_user_role', 'it_pricing_product_add_to_cart_user_role', 'it_pricing_product_hide_user_role', 'yith_cog_cost', 'yith_cog_min_variation_cost', 'yith_cog_max_variation_cost', '_wc_cog_cost', '_wc_cog_min_variation_cost', '_wc_cog_max_variation_cost', '_regular_price_wmcp', '_sale_price_wmcp', 'iwbvel_undo_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yith_wcbm_product_meta', 'yikes_woo_products_tabs', 'it_product_disable_discount', 'it_product_hide_price_unregistered', 'it_pricing_product_price_user_role', 'it_pricing_product_add_to_cart_user_role', 'it_pricing_product_hide_user_role', 'yith_cog_cost', 'yith_cog_min_variation_cost', 'yith_cog_max_variation_cost', '_wc_cog_cost', '_wc_cog_min_variation_cost', '_wc_cog_max_variation_cost', '_regular_price_wmcp', '_sale_price_wmcp', 'iwbvel_undo_count');

