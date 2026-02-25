#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpautop_by_default'
wp option delete 'wpautop_on_by_default'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpautop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpautop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpautop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpautop'"
