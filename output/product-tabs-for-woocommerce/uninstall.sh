#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_woocommerce_product_tabs_enabled'
wp option delete 'woocommerce_version'
wp option delete 'alg_wc_product_tabs_standard_tabs_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disable'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_priority'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_title'"
wp option delete 'alg_wc_product_tabs_global_tabs_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_id_global_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_content_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_priority_%'"
wp option delete 'alg_custom_product_tabs_global_show_hide_products_option_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sku'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_title_global_hide_in_cats_ids_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_title_global_show_in_cats_ids_%'"
wp option delete 'alg_custom_product_tabs_local_enabled'
wp option delete 'alg_wc_product_tabs_variations_tabs_enabled'
wp option delete 'alg_wc_product_tabs_variations_tabs_title'
wp option delete 'alg_wc_product_tabs_variations_tabs_priority'
wp option delete 'alg_wc_product_tabs_variations_tabs_content'
wp option delete 'alg_wc_product_tabs_wpautop'
wp option delete 'alg_wc_product_tabs_version'
wp option delete 'alg_custom_product_tabs_global_add_sku_to_products_list'
wp option delete 'alg_custom_product_tabs_local_wp_editor_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
