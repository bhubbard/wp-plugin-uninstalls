#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bbp_jp_utility'
wp option delete '_bbp_root_slug'
wp option delete '_bbp_user_slug'

# Delete Transients
wp transient delete 'bbp_utility_recent_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbp_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbp_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbp_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbp_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_blog'"
