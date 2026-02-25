#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_snap_finance_settings'
wp option delete 'woocommerce_tax_round_at_subtotal'

# Delete Transients
wp transient delete 'snap_finance_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_applicationId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_applicationId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_applicationId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_applicationId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snap_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snap_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snap_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snap_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_deliveryDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_deliveryDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_deliveryDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_deliveryDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_final_responce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_final_responce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_final_responce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_final_responce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'full_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'full_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'full_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'full_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_application'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_application'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_application'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_application'"
