#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simplefavorites_dependencies'
wp option delete 'simplefavorites_users'
wp option delete 'simplefavorites_display'
wp option delete 'simplefavorites_cache_enabled'
wp option delete 'simplefavorites_dev_mode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simplefavorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simplefavorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simplefavorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simplefavorites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simplefavorites_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simplefavorites_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simplefavorites_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simplefavorites_count'"
