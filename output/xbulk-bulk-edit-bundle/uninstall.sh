#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbel-version'
wp option delete 'wpbe_update_table_log'
wp option delete 'it_black_friday_banner_dismissed'
wp option delete 'wpbe_active_post_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_process_error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_process_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_background_process_try_again'"
wp option delete 'itbbc_scheduler_version'
wp option delete 'wpbel_some_setting'
wp option delete 'wpbel_usage_track'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent'"
wp option delete 'ithemeland_activation_email'
wp option delete 'wpbel_onboarding'
wp option delete 'wpbel_opt_in'
wp option delete 'wpbe_active_count_undo'
wp option delete 'iwbvel_reset_filter_data_version'
wp option delete 'iwbvel-version'
wp option delete 'iwbve_update_table_log'
wp option delete 'iwbvel_meta_fields'
wp option delete 'iwbvel_column_fields'
wp option delete 'woo_multi_currency_params'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-el-data'"
wp option delete 'yikes_woo_reusable_products_tabs_applied'
wp option delete 'yikes_woo_reusable_products_tabs'
wp option delete 'iwbvel_some_setting'
wp option delete 'iwbvel_usage_track'
wp option delete 'iwbvel_onboarding'
wp option delete 'iwbvel_opt_in'
wp option delete 'wccbel-version'
wp option delete 'wccbe_update_table_log'
wp option delete 'wccbe_meta_fields'
wp option delete 'wccbe_column_fields'
wp option delete 'wccbe_pro_last_check_for_update'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'wccbel_some_setting'
wp option delete 'wccbel_usage_track'
wp option delete 'wccbel_onboarding'
wp option delete 'wccbel_opt_in'
wp option delete 'wobel-version'
wp option delete 'wobe_update_table_log'
wp option delete 'wobe_meta_fields'
wp option delete 'wobe_column_fields'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'wobe_get_orders_otb'
wp option delete 'wobel_some_setting'
wp option delete 'wobel_usage_track'
wp option delete 'wobel_onboarding'
wp option delete 'wobel_opt_in'
wp option delete 'wcbe_reset_filter_data_version'
wp option delete 'wcbel-version'
wp option delete 'wcbe_update_table_log'
wp option delete 'wcbe_meta_fields'
wp option delete 'wcbe_column_fields'
wp option delete 'wcbe-pro-el-data'
wp option delete 'wcbe_scheduler_version'
wp option delete 'wcbe_pro_last_check_for_update'
wp option delete 'wcbel_some_setting'
wp option delete 'wcbel_usage_track'
wp option delete 'wcbel_onboarding'
wp option delete 'wcbel_opt_in'
wp option delete 'wbebl-version'
wp option delete 'wbebl_free_gifts_plugin_banner_dismissed'
wp option delete 'wbebl_is_active'
wp option delete 'wbebl_some_setting'
wp option delete 'wbebl_usage_track'
wp option delete 'wbebl_onboarding'
wp option delete 'wbebl_opt_in'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yith_wcbm_product_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yith_wcbm_product_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yith_wcbm_product_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yith_wcbm_product_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'it_product_disable_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'it_product_disable_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'it_product_disable_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'it_product_disable_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'it_product_hide_price_unregistered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'it_product_hide_price_unregistered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'it_product_hide_price_unregistered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'it_product_hide_price_unregistered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'it_pricing_product_price_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'it_pricing_product_price_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'it_pricing_product_price_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'it_pricing_product_price_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'it_pricing_product_add_to_cart_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'it_pricing_product_add_to_cart_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'it_pricing_product_add_to_cart_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'it_pricing_product_add_to_cart_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'it_pricing_product_hide_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'it_pricing_product_hide_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'it_pricing_product_hide_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'it_pricing_product_hide_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yith_cog_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yith_cog_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yith_cog_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yith_cog_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yith_cog_min_variation_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yith_cog_min_variation_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yith_cog_min_variation_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yith_cog_min_variation_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yith_cog_max_variation_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yith_cog_max_variation_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yith_cog_max_variation_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yith_cog_max_variation_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_min_variation_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_min_variation_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_min_variation_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_min_variation_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_max_variation_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_max_variation_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_max_variation_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_max_variation_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price_wmcp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_wmcp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iwbvel_undo_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iwbvel_undo_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iwbvel_undo_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iwbvel_undo_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbe_undo_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbe_undo_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbe_undo_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbe_undo_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcbe_redo_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcbe_redo_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcbe_redo_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcbe_redo_count'"
