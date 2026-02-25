#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wposbridge_address'
wp option delete 'wposbridge_secret'
wp option delete 'wpos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opensim_avatar_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opensim_avatar_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opensim_avatar_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opensim_avatar_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opensim_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opensim_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opensim_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opensim_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'opensim_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'opensim_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'opensim_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'opensim_lastname'"
