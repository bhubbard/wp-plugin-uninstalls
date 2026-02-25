#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'role_based_storage_limiter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rbsl_used_storage_space'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rbsl_used_storage_space'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rbsl_used_storage_space'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rbsl_used_storage_space'"
