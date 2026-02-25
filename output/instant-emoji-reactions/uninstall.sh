#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'instant_emoji_reactions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_emoji_reactions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_emoji_reactions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_emoji_reactions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_emoji_reactions'"
