#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'waruk_shipping_max_free'
wp option delete 'waruk_shipping_cost'
wp option delete 'waruk_shipping_time'
wp option delete 'waruk_hide_default'
wp option delete 'waruk_webapikey'
wp option delete 'waruk_comments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arukereso_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arukereso_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arukereso_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arukereso_hide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arukereso_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arukereso_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arukereso_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arukereso_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'waruk_prod_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'waruk_prod_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'waruk_prod_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'waruk_prod_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manufacturer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ean_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ean_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ean_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ean_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'warranty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'warranty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'warranty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'warranty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_prod_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_prod_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_prod_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_prod_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'waruk_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'waruk_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'waruk_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'waruk_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'waruk_category_hide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'waruk_category_hide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'waruk_category_hide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'waruk_category_hide'"
