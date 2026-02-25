#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'msfr_ensure_plan_products'
wp option delete 'msfr_registration_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'membership_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'membership_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'membership_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'membership_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
