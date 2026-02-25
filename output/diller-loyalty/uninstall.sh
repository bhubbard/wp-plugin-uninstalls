#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete '_diller_settings'
wp option delete '_diller_store_configs'
wp option delete 'woocommerce_default_country'

# Delete Transients
wp transient delete 'diller_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%unsubscribed_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%unsubscribed_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%unsubscribed_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%unsubscribed_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lang'"
