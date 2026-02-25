#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_notify_low_stock_amount'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_packaging_materials_packaging_stock_reduced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_packaging_materials_packaging_stock_reduced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_packaging_materials_packaging_stock_reduced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_packaging_materials_packaging_stock_reduced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_packaging_materials_packaging'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_packaging_materials_packaging'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_packaging_materials_packaging'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_packaging_materials_packaging'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_packaging_materials_packaging_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_packaging_materials_packaging_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_packaging_materials_packaging_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_packaging_materials_packaging_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_packaging_materials_usage_per_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_packaging_materials_usage_per_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_packaging_materials_usage_per_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_packaging_materials_usage_per_order'"
