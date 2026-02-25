#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_woo_cardknox_split_payment_settings'
wp option delete 'woocommerce_cardknox_settings'
wp option delete 'woocommerce_weight_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wksp_snap_eligible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wksp_snap_eligible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wksp_snap_eligible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wksp_snap_eligible'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wksp_ebt_cash_eligible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wksp_ebt_cash_eligible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wksp_ebt_cash_eligible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wksp_ebt_cash_eligible'"
