#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fep_message_view_changed'
wp option delete 'FEP_admin_options'
wp option delete '_fep_can_delete_all'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'fep_db_version'
wp option delete '_fep_used_nonces'
wp option delete 'fep_updated_versions'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_user_message_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_user_message_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_user_message_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_user_message_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fep_review_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fep_review_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fep_review_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fep_review_notice_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_new_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_new_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_new_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_new_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_participant_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_participant_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_participant_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_participant_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_read_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_read_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_read_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_read_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_deleted_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_deleted_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_deleted_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_deleted_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_last_reply_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_last_reply_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_last_reply_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_last_reply_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_last_reply_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_last_reply_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_last_reply_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_last_reply_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_participants'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_participants'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_participants'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_participants'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_fep_delete_by_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_fep_delete_by_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_fep_delete_by_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fep_delete_by_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_fep_archived_by_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_fep_archived_by_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_fep_archived_by_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fep_archived_by_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_fep_parent_read_by_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_fep_parent_read_by_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_fep_parent_read_by_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fep_parent_read_by_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_notification_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_notification_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_notification_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_notification_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'FEP_user_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'FEP_user_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'FEP_user_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'FEP_user_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_user_announcement_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_user_announcement_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_user_announcement_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_user_announcement_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fep_notification_prev'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fep_notification_prev'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fep_notification_prev'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fep_notification_prev'"
