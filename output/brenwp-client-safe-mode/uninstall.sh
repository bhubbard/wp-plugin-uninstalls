#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brenwp_csm_activity_log'

# Clear Cron Jobs
wp cron event delete 'brenwp_csm_prune_activity_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brenwp_csm_twofa_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brenwp_csm_twofa_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brenwp_csm_twofa_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brenwp_csm_twofa_notice_dismissed'"
