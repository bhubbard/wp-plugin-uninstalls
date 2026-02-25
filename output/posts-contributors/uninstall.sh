#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppc_contributors_installed'
wp option delete 'wppc_contributors_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wppc_post_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wppc_post_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wppc_post_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wppc_post_author'"
