#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'skittybop_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'skittybop_last_seen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'skittybop_last_seen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'skittybop_last_seen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'skittybop_last_seen'"
