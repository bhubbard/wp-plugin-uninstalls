#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wp_social_preview_deactivated_notice_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%twitter_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%twitter_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%twitter_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%twitter_username'"
