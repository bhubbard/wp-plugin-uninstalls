#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_neighborhood'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_neighborhood'"
