#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smfwc_settings'
wp option delete 'smfwc_api_key'
wp option delete 'smfwc_privacy_notice_dismissed'
wp option delete 'smfwc_large_taxonomy_notice_dismissed'

# Delete Transients
wp transient delete 'smfwc_category_tree'

# Clear Cron Jobs
wp cron event delete 'smfwc_cleanup_old_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smfwc_last_analysis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smfwc_last_analysis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smfwc_last_analysis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smfwc_last_analysis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smfwc_large_taxonomy_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smfwc_large_taxonomy_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smfwc_large_taxonomy_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smfwc_large_taxonomy_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'smfwc_notice_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'smfwc_notice_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'smfwc_notice_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smfwc_notice_dismissed_%'"
