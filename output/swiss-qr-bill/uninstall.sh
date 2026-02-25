#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_swiss_qr_bill_may_deactivate'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsqb_activate_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsqb_activate_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsqb_activate_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsqb_activate_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sqb_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sqb_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sqb_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sqb_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsqb_gateway_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsqb_gateway_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsqb_gateway_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsqb_gateway_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsqb_invoice_pdf_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsqb_invoice_pdf_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsqb_invoice_pdf_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsqb_invoice_pdf_path'"
