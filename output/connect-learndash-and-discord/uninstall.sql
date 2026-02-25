-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ets_learndash_discord_client_id', 'ets_learndash_discord_client_secret', 'ets_learndash_discord_bot_token', 'ets_learndash_discord_redirect_page_id', 'ets_learndash_discord_redirect_url', 'ets_learndash_discord_server_id', 'ets_learndash_discord_role_mapping', 'ets_learndash_discord_all_roles', 'ets_learndash_discord_roles_color', 'ets_learndash_discord_default_role_id', 'ets_learndash_discord_allow_none_student', 'ets_learndash_discord_send_welcome_dm', 'ets_learndash_discord_welcome_message', 'ets_learndash_discord_send_course_complete_dm', 'ets_learndash_discord_course_complete_message', 'ets_learndash_discord_send_lesson_complete_dm', 'ets_learndash_discord_lesson_complete_message', 'ets_learndash_discord_send_topic_complete_dm', 'ets_learndash_discord_topic_complete_message', 'ets_learndash_discord_send_quiz_complete_dm', 'ets_learndash_discord_quiz_complete_message', 'ets_learndash_discord_send_assignment_approved_dm', 'ets_learndash_discord_assignment_approved_message', 'ets_learndash_discord_retry_failed_api', 'ets_learndash_discord_kick_upon_disconnect', 'ets_learndash_discord_retry_api_count', 'ets_learndash_discord_job_queue_concurrency', 'ets_learndash_discord_job_queue_batch_size', 'ets_learndash_discord_log_api_response', 'ets_learndash_discord_embed_messaging_feature', 'ets_learndash_discord_remove_role_course_expired', 'ets_learndash_discord_data_erases', 'ets_learndash_discord_login_with_discord', 'ets_learndash_discord_connect_button_bg_color', 'ets_learndash_discord_disconnect_button_bg_color', 'ets_learndash_discord_loggedin_button_text', 'ets_learndash_discord_non_login_button_text', 'ets_learndash_discord_disconnect_button_text', 'ets_learndash_discord_connected_bot_name', 'ets_learndash_discord_uuid_file_name', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ets_learndash_discord_access_token', '_ets_learndash_discord_refresh_token', '_ets_learndash_discord_last_default_role', '_ets_learndash_discord_username', '_ets_learndash_discord_dismissed_notification', 'file_link', 'course_id', 'lesson_id', 'achievement_message', 'image', '_ets_learndash_discord_user_id', '_ets_learndash_discord_avatar', '_ets_learndash_discord_expires_in', '_ets_learndash_discord_join_date', '_ets_learndash_discord_dm_channel');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ets_learndash_discord_access_token', '_ets_learndash_discord_refresh_token', '_ets_learndash_discord_last_default_role', '_ets_learndash_discord_username', '_ets_learndash_discord_dismissed_notification', 'file_link', 'course_id', 'lesson_id', 'achievement_message', 'image', '_ets_learndash_discord_user_id', '_ets_learndash_discord_avatar', '_ets_learndash_discord_expires_in', '_ets_learndash_discord_join_date', '_ets_learndash_discord_dm_channel');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ets_learndash_discord_access_token', '_ets_learndash_discord_refresh_token', '_ets_learndash_discord_last_default_role', '_ets_learndash_discord_username', '_ets_learndash_discord_dismissed_notification', 'file_link', 'course_id', 'lesson_id', 'achievement_message', 'image', '_ets_learndash_discord_user_id', '_ets_learndash_discord_avatar', '_ets_learndash_discord_expires_in', '_ets_learndash_discord_join_date', '_ets_learndash_discord_dm_channel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ets_learndash_discord_access_token', '_ets_learndash_discord_refresh_token', '_ets_learndash_discord_last_default_role', '_ets_learndash_discord_username', '_ets_learndash_discord_dismissed_notification', 'file_link', 'course_id', 'lesson_id', 'achievement_message', 'image', '_ets_learndash_discord_user_id', '_ets_learndash_discord_avatar', '_ets_learndash_discord_expires_in', '_ets_learndash_discord_join_date', '_ets_learndash_discord_dm_channel');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_role_id_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_role_id_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_role_id_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_role_id_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_welcome_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_welcome_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_welcome_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_welcome_dm_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_course_complete_dm_for%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_course_complete_dm_for%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_course_complete_dm_for%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_course_complete_dm_for%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_lesson_complete_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_lesson_complete_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_lesson_complete_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_lesson_complete_dm_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_topic_complete_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_topic_complete_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_topic_complete_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_topic_complete_dm_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_quiz_complete_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_quiz_complete_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_quiz_complete_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_quiz_complete_dm_for_%';

