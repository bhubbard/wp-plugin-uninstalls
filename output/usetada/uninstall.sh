#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'usetada_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usetada_topup_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usetada_topup_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usetada_topup_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usetada_topup_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usetada_topup_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usetada_topup_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usetada_topup_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usetada_topup_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usetada_topup_last_process'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usetada_topup_last_process'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usetada_topup_last_process'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usetada_topup_last_process'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usetada_topup_last_api_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usetada_topup_last_api_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usetada_topup_last_api_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usetada_topup_last_api_response'"
