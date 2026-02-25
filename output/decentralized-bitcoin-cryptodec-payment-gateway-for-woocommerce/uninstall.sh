#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'ITLS_dp_gw_task_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cryptodec_best_btc_wallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cryptodec_best_btc_wallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cryptodec_best_btc_wallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cryptodec_best_btc_wallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cryptodec_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cryptodec_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cryptodec_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cryptodec_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cryptodec_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cryptodec_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cryptodec_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cryptodec_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cryptodec_coin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cryptodec_coin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cryptodec_coin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cryptodec_coin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'best_btc_wallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'best_btc_wallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'best_btc_wallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'best_btc_wallet'"
