#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_global_shop_discount_plugin_enabled'
wp option delete 'alg_wc_global_shop_discount_load_in_admin'
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_global_shop_discount_taxonomies'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_global_shop_discount_%'"
wp option delete 'alg_wc_global_shop_discount_stop_on_first_discount_group'
wp option delete 'alg_wc_global_shop_discount_cache_product_prices'
wp option delete 'alg_wc_global_shop_discount_tool_save_all_products'
wp option delete 'alg_wc_global_shop_discount_tool_delete_transients'
wp option delete 'alg_wc_global_shop_discount_version'
wp option delete 'alg_wc_global_shop_discount_admin_title'
wp option delete 'alg_wc_global_shop_discount_taxonomies_orderby'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alg_wc_gsd_products_%' OR option_name LIKE '_site_transient_alg_wc_gsd_products_%'"
wp transient delete 'alg_wc_gsd_products_onsale'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
