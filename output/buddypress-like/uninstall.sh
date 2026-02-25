#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_like_settings'
wp option delete 'bp_like_db_version'
wp option delete 'bp-like-db-version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'liked_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'liked_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'liked_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'liked_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_liked_activities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_liked_activities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_liked_activities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_liked_activities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_liked_blogposts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_liked_blogposts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_liked_blogposts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_liked_blogposts'"
