#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'digital_product_support_for_woocommerce'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'support'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'support'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'support'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'support'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcps_up_sell_product_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcps_up_sell_product_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcps_up_sell_product_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcps_up_sell_product_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'support_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'support_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'support_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'support_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcps_up_sell_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcps_up_sell_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcps_up_sell_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcps_up_sell_product'"
