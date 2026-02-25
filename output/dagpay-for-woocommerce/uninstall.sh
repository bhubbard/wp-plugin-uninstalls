#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dagcoin_invoice_id_cancelled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dagcoin_invoice_id_cancelled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dagcoin_invoice_id_cancelled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dagcoin_invoice_id_cancelled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dagcoin_invoice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dagcoin_invoice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dagcoin_invoice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dagcoin_invoice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
