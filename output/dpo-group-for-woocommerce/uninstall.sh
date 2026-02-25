#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_woocommerce_dpo_settings'
wp option delete 'woocommerce_dpo_settings'

# Clear Cron Jobs
wp cron event delete 'dpo_order_query_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_markup_fee_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_markup_fee_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_markup_fee_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_markup_fee_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpo_reference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpo_reference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpo_reference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpo_reference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpo_trans_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpo_trans_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpo_trans_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpo_trans_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_credit_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_credit_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_credit_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_credit_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'service_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'service_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'service_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'service_type'"
