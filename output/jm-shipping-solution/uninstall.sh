#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jmss_api_key'
wp option delete 'jmss_plugin_api_key'
wp option delete 'JMSS_plugin_mode'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'freight_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'freight_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'freight_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'freight_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subtotal_ex_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subtotal_ex_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subtotal_ex_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subtotal_ex_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'JMSS_shippment_saved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'JMSS_shippment_saved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'JMSS_shippment_saved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'JMSS_shippment_saved'"
