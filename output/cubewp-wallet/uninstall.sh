#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cwpOptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cubewp_wallet_payout_methods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cubewp_wallet_payout_methods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cubewp_wallet_payout_methods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cubewp_wallet_payout_methods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cubewp_wallet_available_funds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cubewp_wallet_available_funds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cubewp_wallet_available_funds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cubewp_wallet_available_funds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cubewp_wallet_on_hold_funds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cubewp_wallet_on_hold_funds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cubewp_wallet_on_hold_funds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cubewp_wallet_on_hold_funds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cubewp_wallet_overall_funds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cubewp_wallet_overall_funds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cubewp_wallet_overall_funds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cubewp_wallet_overall_funds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cubewp_wallet_withdrawn_funds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cubewp_wallet_withdrawn_funds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cubewp_wallet_withdrawn_funds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cubewp_wallet_withdrawn_funds'"
