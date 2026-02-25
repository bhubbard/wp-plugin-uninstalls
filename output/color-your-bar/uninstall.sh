#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cyb-switch'
wp option delete 'cyb-ios-full-mode'
wp option delete 'cyb-post-type'
wp option delete 'cyb-color'
wp option delete 'cyb-ios-bar-style'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cyb-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cyb-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cyb-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cyb-color'"
