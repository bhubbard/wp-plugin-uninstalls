#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'caw_general_settings'
wp option delete 'caw_plugin_version'
wp option delete 'caw_email_settings'
wp option delete 'caw_history_settings'
wp option delete 'caw_post_types'
wp option delete 'caw_notification_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Clear Cron Jobs
wp cron event delete 'caw_frequently_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_request_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_request_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_request_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_request_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pending_review_status_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pending_review_status_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pending_review_status_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pending_review_status_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'approval_review_status_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'approval_review_status_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'approval_review_status_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'approval_review_status_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'assignee_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'assignee_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'assignee_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'assignee_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remaining_reviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remaining_reviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remaining_reviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remaining_reviews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'review_process_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'review_process_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'review_process_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'review_process_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'assignee_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'assignee_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'assignee_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'assignee_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'assigned_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'assigned_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'assigned_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'assigned_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
