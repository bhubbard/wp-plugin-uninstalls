#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cren_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cren_subscribe_to_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cren_subscribe_to_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cren_subscribe_to_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cren_subscribe_to_comment'"
