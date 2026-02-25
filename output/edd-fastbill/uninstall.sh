#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_cfm_id'
wp option delete 'edd_fastbill_error_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fastbill_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fastbill_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fastbill_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fastbill_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fastbill_document_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fastbill_document_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fastbill_document_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fastbill_document_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd-checkout-fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd-checkout-fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd-checkout-fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd-checkout-fields'"
