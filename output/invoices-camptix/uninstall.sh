#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'camptix_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'original_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'original_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'original_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'original_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_metas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_metas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_metas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_metas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tix_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tix_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tix_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tix_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transaction_id'"
