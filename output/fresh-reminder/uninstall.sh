#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fresre_settings'
wp option delete 'fresre_stale_posts_cache'

# Clear Cron Jobs
wp cron event delete 'fresre_check_event'
wp cron event delete 'fresre_clear_reviewed_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fresre_reviewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fresre_reviewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fresre_reviewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fresre_reviewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fresre_pined'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fresre_pined'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fresre_pined'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fresre_pined'"
