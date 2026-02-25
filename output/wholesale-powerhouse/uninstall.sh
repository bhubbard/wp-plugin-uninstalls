#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wholpo_settings'
wp option delete 'wholesale_powerhouse_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wh_tier_lite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wh_tier_lite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wh_tier_lite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wh_tier_lite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wh_hide_from_retail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wh_hide_from_retail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wh_hide_from_retail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wh_hide_from_retail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wh_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wh_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wh_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wh_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wh_pending_approval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wh_pending_approval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wh_pending_approval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wh_pending_approval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wh_tax_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wh_tax_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wh_tax_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wh_tax_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
