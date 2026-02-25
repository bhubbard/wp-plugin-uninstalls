#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'watchtower'
wp option delete 'whthq_headquarters'
wp option delete 'watchtower_ota_token'
wp option delete 'watchtower_db_version'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'call_headquarter_mysql_status_lock'
wp transient delete 'update_themes'
wp transient delete 'wht-activation-notice-message'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'retry_headquarter_call'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wht_user_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wht_user_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wht_user_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wht_user_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whthq_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whthq_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whthq_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whthq_agent'"
