#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'branchname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'branchname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'branchname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'branchname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_ncm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_ncm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_ncm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_ncm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vendor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vendor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vendor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vendor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'insert_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'insert_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'insert_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'insert_data'"
