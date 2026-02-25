#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_receipt_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_receipt_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_receipt_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_receipt_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_payment_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_payment_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_payment_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_payment_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_payment_method'"
