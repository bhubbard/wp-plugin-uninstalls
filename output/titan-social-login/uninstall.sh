#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'titsl_settings'
wp option delete 'titsl_version'
wp option delete 'titsl_link_map_built'
wp option delete 'titsl_link_map_page'
wp option delete 'titsl_link_map'

# Delete Transients
wp transient delete 'titsl_twitter_pkce'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'titsl_avatar_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'titsl_avatar_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'titsl_avatar_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'titsl_avatar_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
