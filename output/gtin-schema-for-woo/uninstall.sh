#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_gtin_schema_admin_tab_in_loop'
wp option delete 'wc_gtin_schema_admin_tab_in_single_product'
wp option delete 'wc_gtin_schema_admin_tab_in_cart'
wp option delete 'wc_gtin_schema_admin_tab_in_order_item'
wp option delete 'wc_gtin_schema_admin_tab_single_product_position'
wp option delete 'wc_gtin_schema_admin_tab_single_product_tab'
wp option delete 'wc_gtin_schema_admin_tab_in_checkout'
wp option delete 'gtin_schema_product_date_structure'
wp option delete 'wc_gtin_schema_admin_tab_label'
wp option delete 'wc_gtin_schema_admin_tab_get_get_sku'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtin_schema_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtin_schema_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtin_schema_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtin_schema_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
