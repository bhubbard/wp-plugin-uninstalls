#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flplaylist_flowplayer_license'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flplaylist_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flplaylist_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flplaylist_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flplaylist_meta'"
