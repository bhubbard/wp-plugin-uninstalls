#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_newebpay_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_needUBN'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_needUBN'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_needUBN'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_needUBN'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_UBN'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_UBN'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_UBN'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_UBN'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_invoiceFlag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_invoiceFlag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_invoiceFlag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_invoiceFlag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_invoiceFlagNum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_invoiceFlagNum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_invoiceFlagNum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_invoiceFlagNum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_Buyer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_Buyer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_Buyer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_Buyer'"
