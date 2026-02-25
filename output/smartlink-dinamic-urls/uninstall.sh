#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'back-ops'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartlink-1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartlink-1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartlink-1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartlink-1'"
