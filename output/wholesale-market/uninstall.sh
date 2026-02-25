#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ced_cwsm_latest_csv_header'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ced_cwsm_wholesale_tax_exclude_%'"
wp option delete 'ced_cwsm_wholesaleRolesArray'
wp option delete 'ced_cwsm_enable_minCheckoutPrice'
wp option delete 'ced_cwsm_minCheckoutPrice'
wp option delete 'ced_cwsm_minCheckoutPrice_failure_txt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_minQty'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp option delete 'ced_cwsm_wholesale_tax_exclude'
wp option delete 'ced_wura_notification'
wp option delete 'ced_cwsm_enable_minQty'
wp option delete 'ced_cwsm_request_role_addon_directly'
wp option delete 'ced_cwsm_request_role_myaccount_page'
wp option delete 'ced_cwsm_basic_settings_payment_enable'
wp option delete 'ced_cwsm_request_role_addon_functionality'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_in_price_column'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wsp_applied_failure_txt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wsp_applied_success_txt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default_wsp_applied_txt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%custm_shop_txt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%default_wm_price_txt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%radio_minQty_picker'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%central_min_qty'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%custm_product_txt'"
wp option delete 'ced_cwsm_radio_minQty_picker'
wp option delete 'ced_cwsm_central_min_qty'
wp option delete 'ced_cwsm_radio_whoCanSee'
wp option delete 'ced_cwsm_enable_wholesale_market'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_wholesale_market'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%radio_whoCanSee'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%keep_plugin_setting'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%keep_products_meta_fields'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_cwsm_wholesale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_cwsm_wholesale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_cwsm_wholesale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_cwsm_wholesale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_cwsm_min_qty_to_buy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_cwsm_min_qty_to_buy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_cwsm_min_qty_to_buy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_cwsm_min_qty_to_buy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_cwsm_min_qty_to_buy%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_cwsm_min_qty_to_buy%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_cwsm_min_qty_to_buy%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_cwsm_min_qty_to_buy%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_wholesale_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_wholesale_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_wholesale_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_wholesale_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_wholesale_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_wholesale_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_wholesale_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_wholesale_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_cwsm_user_role_package'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_cwsm_user_role_package'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_cwsm_user_role_package'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_cwsm_user_role_package'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_wholesale_request_month_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_wholesale_request_month_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_wholesale_request_month_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_wholesale_request_month_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_wholesale_request_day_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_wholesale_request_day_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_wholesale_request_day_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_wholesale_request_day_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_wholesale_request_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_wholesale_request_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_wholesale_request_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_wholesale_request_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_cwsm_payement_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_cwsm_payement_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_cwsm_payement_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_cwsm_payement_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ced_direct_role_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ced_direct_role_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ced_direct_role_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ced_direct_role_request'"
