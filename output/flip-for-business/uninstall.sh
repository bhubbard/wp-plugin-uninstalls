#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_flip_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flip_sender_bank_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flip_sender_bank_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flip_sender_bank_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flip_sender_bank_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flip_sender_bank_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flip_sender_bank_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flip_sender_bank_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flip_sender_bank_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flip_account_refund_bank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flip_account_refund_bank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flip_account_refund_bank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flip_account_refund_bank'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flip_account_refund_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flip_account_refund_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flip_account_refund_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flip_account_refund_number'"
