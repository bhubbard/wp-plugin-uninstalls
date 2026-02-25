#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordpress_api_key'
wp option delete 'drainware_discard_month'
wp option delete 'drainware_show_user_comments_approved'
wp option delete 'drainware_connectivity_time'
wp option delete 'drainware_spam_count'
wp option delete 'drainware_available_servers'
wp option delete 'drainware_api_key'
wp option delete 'drainware_comment_nonce'

# Clear Cron Jobs
wp cron event delete 'drainware_schedule_cron_recheck'
wp cron event delete 'drainware_scheduled_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drainware_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drainware_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drainware_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drainware_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drainware_user_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drainware_user_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drainware_user_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drainware_user_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drainware_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drainware_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drainware_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drainware_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drainware_as_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drainware_as_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drainware_as_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drainware_as_submitted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drainware_rechecking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drainware_rechecking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drainware_rechecking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drainware_rechecking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drainware_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drainware_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drainware_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drainware_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'drainware_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'drainware_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'drainware_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'drainware_error'"
