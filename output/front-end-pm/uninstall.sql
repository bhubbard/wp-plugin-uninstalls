-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_fep_message_view_changed', 'FEP_admin_options', '_fep_can_delete_all', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fep_db_version', '_fep_used_nonces', 'fep_updated_versions', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fep_user_message_count', 'fep_review_notice_dismiss', '_fep_new_id', '_fep_email_sent', '_fep_participant_roles', '_fep_read_by', '_fep_deleted_by', '_fep_last_reply_by', '_fep_last_reply_id', '_fep_participants', '_fep_notification_dismiss', 'FEP_user_options', '_fep_user_announcement_count', '_fep_notification_prev');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fep_user_message_count', 'fep_review_notice_dismiss', '_fep_new_id', '_fep_email_sent', '_fep_participant_roles', '_fep_read_by', '_fep_deleted_by', '_fep_last_reply_by', '_fep_last_reply_id', '_fep_participants', '_fep_notification_dismiss', 'FEP_user_options', '_fep_user_announcement_count', '_fep_notification_prev');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fep_user_message_count', 'fep_review_notice_dismiss', '_fep_new_id', '_fep_email_sent', '_fep_participant_roles', '_fep_read_by', '_fep_deleted_by', '_fep_last_reply_by', '_fep_last_reply_id', '_fep_participants', '_fep_notification_dismiss', 'FEP_user_options', '_fep_user_announcement_count', '_fep_notification_prev');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fep_user_message_count', 'fep_review_notice_dismiss', '_fep_new_id', '_fep_email_sent', '_fep_participant_roles', '_fep_read_by', '_fep_deleted_by', '_fep_last_reply_by', '_fep_last_reply_id', '_fep_participants', '_fep_notification_dismiss', 'FEP_user_options', '_fep_user_announcement_count', '_fep_notification_prev');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_fep_delete_by_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_fep_delete_by_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_fep_delete_by_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fep_delete_by_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_fep_archived_by_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_fep_archived_by_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_fep_archived_by_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fep_archived_by_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_fep_parent_read_by_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_fep_parent_read_by_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_fep_parent_read_by_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fep_parent_read_by_%';

