#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snipp_net_username'
wp option delete 'snipp_net_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snipp_net_require_membership'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snipp_net_require_membership'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snipp_net_require_membership'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snipp_net_require_membership'"
