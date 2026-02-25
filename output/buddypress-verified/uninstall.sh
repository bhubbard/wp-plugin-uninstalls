#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddyverified'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp-verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp-verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp-verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp-verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp-profile-verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp-profile-verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp-profile-verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp-profile-verified'"
