#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'subscribe_reloaded_manager_page'
wp option delete 'smtp_pass'
wp option delete 'smtp_user'
wp option delete 'stcrbe_last_run'
wp option delete 'stcrbe_unsubscribed'

# Clear Cron Jobs
wp cron event delete 'FV_STCR_sharing_cron_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_stcr@_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_stcr@_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_stcr@_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_stcr@_%'"
