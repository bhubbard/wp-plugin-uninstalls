#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbcp_display_display_image'
wp option delete 'wbcp_display_meta'
wp option delete 'wbcp_display_cat_and_tag'
wp option delete 'wbcp_product_layout'
wp option delete 'wbcp_archive_layout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_products_colors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_products_colors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_products_colors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_products_colors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_products_dim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_products_dim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_products_dim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_products_dim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_products_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_products_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_products_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_products_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_products_series'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_products_series'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_products_series'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_products_series'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_products_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_products_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_products_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_products_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_products_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_products_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_products_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_products_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wb_products_available'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wb_products_available'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wb_products_available'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wb_products_available'"
