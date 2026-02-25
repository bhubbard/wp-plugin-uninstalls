#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wporphanageex_role'
wp option delete 'wporphanageex_prefixes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
