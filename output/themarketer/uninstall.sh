#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'

# Clear Cron Jobs
wp cron event delete 'MKTR_CRON'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mktr_optin_subscribe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mktr_optin_subscribe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mktr_optin_subscribe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mktr_optin_subscribe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_cog_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_cog_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_cog_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_cog_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_cog_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_english_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_english_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_english_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_english_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lems__exclude_ids_from_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lems__exclude_ids_from_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lems__exclude_ids_from_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lems__exclude_ids_from_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
