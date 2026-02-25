#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_share_settings'
wp option delete 'has_easy_ss_pro'
wp option delete 'ess_update_notice_dismissed1'
wp option delete 'ess_pro_notice_dismissed1'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_easy_share_count_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_easy_share_count_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_easy_share_count_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_easy_share_count_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easy_share_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easy_share_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easy_share_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easy_share_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_easy_share_last_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_easy_share_last_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_easy_share_last_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_easy_share_last_%'"
