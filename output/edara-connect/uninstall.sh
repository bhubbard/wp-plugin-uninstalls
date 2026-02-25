#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'edara_warehouses'
wp transient delete 'edara_sales_stores'
wp transient delete 'edara_shipping_services'
wp transient delete 'edara_classifications'
wp transient delete 'edara_ar_accounts'
wp transient delete 'edara_admin_notices'
wp transient delete 'edara_webhook_context'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
