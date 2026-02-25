#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_netpay_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_netpay_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_netpay_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_netpay_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_netpay_thankyou_action_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_netpay_thankyou_action_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_netpay_thankyou_action_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_netpay_thankyou_action_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
