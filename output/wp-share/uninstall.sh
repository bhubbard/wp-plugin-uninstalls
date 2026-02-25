#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'share_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_display_sharing_buttons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_display_sharing_buttons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_display_sharing_buttons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_display_sharing_buttons'"
