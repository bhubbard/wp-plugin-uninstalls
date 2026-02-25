#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'CEDSPPM%'"
wp option delete 'ship_per_product_details'
wp option delete 'product_based_shipping_details'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'prod_per_ship_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'prod_per_ship_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'prod_per_ship_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'prod_per_ship_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_ced_product_based_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_ced_product_based_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_ced_product_based_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_ced_product_based_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_ship_pr_variable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_ship_pr_variable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_ship_pr_variable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_ship_pr_variable'"
