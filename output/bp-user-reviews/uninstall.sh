#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp-user-reviews-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'criterions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'criterions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'criterions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'criterions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'average'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'average'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'average'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'average'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp-user-reviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp-user-reviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp-user-reviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp-user-reviews'"
