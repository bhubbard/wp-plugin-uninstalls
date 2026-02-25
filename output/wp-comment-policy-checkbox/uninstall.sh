#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcpc_policy_page_id'
wp option delete 'wpcpc_policy_top_copy'
wp option delete 'wpcpc_external_policy_page'
wp option delete 'wpcpc_policy_page_link_open_same_tab'
wp option delete 'wpcpc_policy_page_link_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpc_private_policy_accepted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpc_private_policy_accepted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpc_private_policy_accepted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpc_private_policy_accepted'"
