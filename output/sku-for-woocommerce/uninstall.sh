#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_sku_for_woocommerce_enabled'
wp option delete 'alg_sku_new_products_generate_enabled'
wp option delete 'alg_sku_for_woocommerce_allow_duplicates'
wp option delete 'alg_sku_for_woocommerce_search_enabled'
wp option delete 'alg_sku_for_woocommerce_search_algorithm'
wp option delete 'alg_sku_add_to_customer_emails'
wp option delete 'alg_sku_categories_enabled'
wp option delete 'alg_sku_tags_enabled'
wp option delete 'alg_sku_for_woocommerce_number_generation_sequential'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_sku_sequential_cat_%'"
wp option delete 'alg_sku_for_woocommerce_variations_handling'
wp option delete 'alg_sku_new_products_generate_only_on_publish'
wp option delete 'woocommerce_version'
wp option delete 'alg_sku_generate_only_for_empty_sku'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_sku_suffix_cat_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_sku_suffix_tag_%'"
wp option delete 'alg_sku_for_woocommerce_template'
wp option delete 'alg_sku_for_woocommerce_prefix'
wp option delete 'alg_sku_for_woocommerce_minimum_number_length'
wp option delete 'alg_sku_for_woocommerce_suffix'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%reset'"
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_sku_generator_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
