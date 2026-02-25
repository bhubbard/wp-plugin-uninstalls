#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affiliate-post-types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'match_case'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'match_case'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'match_case'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'match_case'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boundary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boundary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boundary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boundary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enabled'"
