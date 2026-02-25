#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mc_avatars_skin_source'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mc_avatar_preset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mc_avatar_preset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mc_avatar_preset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mc_avatar_preset'"
