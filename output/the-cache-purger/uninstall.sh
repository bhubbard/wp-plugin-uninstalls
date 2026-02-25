#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kpcp_settings'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'is_doing_cache_purge'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_kptcp_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_kptcp_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_kptcp_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_kptcp_errors_%'"
