#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mnfsc_lock_seconds'
wp option delete 'mnfsc_enable_auto_display'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_np_share_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_np_share_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_np_share_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_np_share_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_np_share_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_np_share_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_np_share_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_np_share_views'"
