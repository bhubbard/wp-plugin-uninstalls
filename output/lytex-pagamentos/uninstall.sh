#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_my_custom_gateway_settings'
wp option delete 'woocommerce_lytex_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoices_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoices_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoices_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoices_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PaymentMethod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PaymentMethod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PaymentMethod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PaymentMethod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CodePix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CodePix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CodePix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CodePix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digitableLine'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digitableLine'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digitableLine'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digitableLine'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkBoleto'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkBoleto'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkBoleto'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkBoleto'"
