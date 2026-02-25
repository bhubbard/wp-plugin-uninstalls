#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ps_simple_par_subscription_shown'
wp option delete 'ps_simple_par_review_time'
wp option delete 'ps_simple_par_dismiss_review_notice'
wp option delete 'ps_simple_par_settings'
wp option delete 'woocommerce_shop_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_access_restricted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_access_restricted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_access_restricted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_access_restricted'"
