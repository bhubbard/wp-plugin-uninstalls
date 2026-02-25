#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgppw_activation_time'
wp option delete 'pgppw_review_notice_hide_v1'
wp option delete 'pgppw_next_show_time'

# Delete Transients
wp transient delete 'pgppw_oauth_token_live'
wp transient delete 'pgppw_oauth_token_sandbox'
wp transient delete 'easy_pgppw_for_woocommerce_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_phonepe_refund_txn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_phonepe_refund_txn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_phonepe_refund_txn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_phonepe_refund_txn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_phonepe_merchant_refund_txn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_phonepe_merchant_refund_txn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_phonepe_merchant_refund_txn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_phonepe_merchant_refund_txn_id'"
