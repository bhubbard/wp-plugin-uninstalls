#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snpm_general'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'blockchain_network_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'blockchain_network_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'blockchain_network_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'blockchain_network_%'"
