#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_price_by_user_role_enabled'
wp option delete 'alg_wc_price_by_user_role_for_bots_disabled'
wp option delete 'alg_wc_price_by_user_role_shipping_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_price_by_user_role_%'"
wp option delete 'alg_wc_price_by_user_role_per_product_enabled'
wp option delete 'alg_wc_price_by_user_role_multipliers_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_price_by_user_role_empty_price_%'"
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'alg_wc_price_by_user_role_per_product_show_roles'
wp option delete 'alg_wc_price_by_user_role_guest'
wp option delete 'alg_wc_price_by_user_role_empty_price_guest'
wp option delete 'alg_wc_price_by_user_role_administrator'
wp option delete 'alg_wc_price_by_user_role_empty_price_administrator'
wp option delete 'alg_wc_price_by_user_role_editor'
wp option delete 'alg_wc_price_by_user_role_empty_price_editor'
wp option delete 'alg_wc_price_by_user_role_author'
wp option delete 'alg_wc_price_by_user_role_empty_price_author'
wp option delete 'alg_wc_price_by_user_role_contributor'
wp option delete 'alg_wc_price_by_user_role_empty_price_contributor'
wp option delete 'alg_wc_price_by_user_role_subscriber'
wp option delete 'alg_wc_price_by_user_role_empty_price_subscriber'
wp option delete 'alg_wc_price_by_user_role_shop_manager'
wp option delete 'alg_wc_price_by_user_role_seller'
wp option delete 'alg_wc_price_by_user_role_vendor_staff'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp option delete 'ts_tracker_last_send'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'alg_wc_price_by_user_role_reset_usage_tracking'
wp option delete 'pbur_lite_allow_tracking'
wp option delete 'alg_wc_price_by_user_role_version'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_price_by_user_role_order_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_price_by_user_role_order_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_price_by_user_role_order_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_price_by_user_role_order_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_price_by_user_role_order_page_checkbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_price_by_user_role_order_page_checkbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_price_by_user_role_order_page_checkbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_price_by_user_role_order_page_checkbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_price_by_user_role_per_product_settings_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_price_by_user_role_per_product_settings_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_price_by_user_role_per_product_settings_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_price_by_user_role_per_product_settings_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_empty_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_empty_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_empty_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_empty_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_regular_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_regular_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_regular_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_regular_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_sale_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_sale_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_sale_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_sale_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
