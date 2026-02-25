#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cogwork_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwKey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwKey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwKey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwKey'"
