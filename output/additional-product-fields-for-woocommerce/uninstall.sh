#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AllInOneNoticeTime'
wp option delete 'DismissAllInOneNotice'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'rednaowooextraproduct_dont_show_again'
wp option delete 'woocommerce_hide_out_of_stock_items'

# Delete Transients
wp transient delete '_woo_extra_products_go_to_welcome'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_rednao_advanced_product_server_options_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_rednao_advanced_product_server_options_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_rednao_advanced_product_server_options_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rednao_advanced_product_server_options_%'"
