#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bbp_digest_show_one_click'
wp option delete '_bbp_digest_enable_weekly'

# Clear Cron Jobs
wp cron event delete 'bbp_digest_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbp_digest_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbp_digest_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbp_digest_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbp_digest_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbp_digest_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbp_digest_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbp_digest_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbp_digest_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbp_digest_forums'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbp_digest_forums'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbp_digest_forums'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbp_digest_forums'"
