#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'am_avatar_clean_on_uninstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'am_custom_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'am_custom_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'am_custom_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'am_custom_avatar'"
