#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bctfw_version'
wp option delete 'bctfw_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_neighborhood'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_birthdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_birthdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_birthdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_birthdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_birthdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_birthdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_birthdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_birthdate'"
