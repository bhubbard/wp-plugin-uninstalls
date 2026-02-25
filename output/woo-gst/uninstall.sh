#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_gstin_number'
wp option delete 'woocommerce_product_types'
wp option delete 'woocommerce_gst_multi_select_slab'
wp option delete 'woocommerce_gst_single_select_slab'
wp option delete 'woocommerce_tax_classes'
wp option delete 'woocommerce_store_state'
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_gst_telemetry_optin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hsn_prod_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hsn_prod_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hsn_prod_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hsn_prod_id'"
