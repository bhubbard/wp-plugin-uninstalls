#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_WC_Freightview_default_package_type'
wp option delete 'woocommerce_freightview_settings'
wp option delete 'woocommerce_WC_Freightview_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_wc_product_shipping_package'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_wc_product_shipping_package'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_wc_product_shipping_package'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_wc_product_shipping_package'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'freightview_shipment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'freightview_shipment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'freightview_shipment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'freightview_shipment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'freightview_shipment_rate_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'freightview_shipment_rate_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'freightview_shipment_rate_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'freightview_shipment_rate_id'"
