#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zcostofgoods_include_payment_fees'
wp option delete 'zcostofgoods_include_shipping_total_cost'
wp option delete 'zcostofgoods_include_total_taxes'
wp option delete 'zcostofgoods_enable_cost_of_goods'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zcostofgoods_wc_notice_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcostofgood_order_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcostofgood_order_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcostofgood_order_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcostofgood_order_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcostofgood_order_order_profit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcostofgood_order_order_profit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcostofgood_order_order_profit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcostofgood_order_order_profit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcostofgood_order_order_margin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcostofgood_order_order_margin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcostofgood_order_order_margin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcostofgood_order_order_margin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcostofgood_order_order_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcostofgood_order_order_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcostofgood_order_order_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcostofgood_order_order_markup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zcost_of_goods_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zcost_of_goods_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zcost_of_goods_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zcost_of_goods_cost'"
