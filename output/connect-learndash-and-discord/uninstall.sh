#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ets_learndash_discord_client_id'
wp option delete 'ets_learndash_discord_client_secret'
wp option delete 'ets_learndash_discord_bot_token'
wp option delete 'ets_learndash_discord_redirect_page_id'
wp option delete 'ets_learndash_discord_redirect_url'
wp option delete 'ets_learndash_discord_server_id'
wp option delete 'ets_learndash_discord_role_mapping'
wp option delete 'ets_learndash_discord_all_roles'
wp option delete 'ets_learndash_discord_roles_color'
wp option delete 'ets_learndash_discord_default_role_id'
wp option delete 'ets_learndash_discord_allow_none_student'
wp option delete 'ets_learndash_discord_send_welcome_dm'
wp option delete 'ets_learndash_discord_welcome_message'
wp option delete 'ets_learndash_discord_send_course_complete_dm'
wp option delete 'ets_learndash_discord_course_complete_message'
wp option delete 'ets_learndash_discord_send_lesson_complete_dm'
wp option delete 'ets_learndash_discord_lesson_complete_message'
wp option delete 'ets_learndash_discord_send_topic_complete_dm'
wp option delete 'ets_learndash_discord_topic_complete_message'
wp option delete 'ets_learndash_discord_send_quiz_complete_dm'
wp option delete 'ets_learndash_discord_quiz_complete_message'
wp option delete 'ets_learndash_discord_send_assignment_approved_dm'
wp option delete 'ets_learndash_discord_assignment_approved_message'
wp option delete 'ets_learndash_discord_retry_failed_api'
wp option delete 'ets_learndash_discord_kick_upon_disconnect'
wp option delete 'ets_learndash_discord_retry_api_count'
wp option delete 'ets_learndash_discord_job_queue_concurrency'
wp option delete 'ets_learndash_discord_job_queue_batch_size'
wp option delete 'ets_learndash_discord_log_api_response'
wp option delete 'ets_learndash_discord_embed_messaging_feature'
wp option delete 'ets_learndash_discord_remove_role_course_expired'
wp option delete 'ets_learndash_discord_data_erases'
wp option delete 'ets_learndash_discord_login_with_discord'
wp option delete 'ets_learndash_discord_connect_button_bg_color'
wp option delete 'ets_learndash_discord_disconnect_button_bg_color'
wp option delete 'ets_learndash_discord_loggedin_button_text'
wp option delete 'ets_learndash_discord_non_login_button_text'
wp option delete 'ets_learndash_discord_disconnect_button_text'
wp option delete 'ets_learndash_discord_connected_bot_name'
wp option delete 'ets_learndash_discord_uuid_file_name'

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_learndash_discord_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_learndash_discord_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_learndash_discord_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_learndash_discord_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_learndash_discord_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_learndash_discord_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_learndash_discord_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_learndash_discord_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_learndash_discord_last_default_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_learndash_discord_last_default_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_learndash_discord_last_default_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_learndash_discord_last_default_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_role_id_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_role_id_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_role_id_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_role_id_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_learndash_discord_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_learndash_discord_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_learndash_discord_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_learndash_discord_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_learndash_discord_dismissed_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_learndash_discord_dismissed_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_learndash_discord_dismissed_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_learndash_discord_dismissed_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'achievement_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'achievement_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'achievement_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'achievement_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_learndash_discord_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_learndash_discord_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_learndash_discord_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_learndash_discord_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_learndash_discord_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_learndash_discord_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_learndash_discord_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_learndash_discord_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_learndash_discord_expires_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_learndash_discord_expires_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_learndash_discord_expires_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_learndash_discord_expires_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_learndash_discord_join_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_learndash_discord_join_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_learndash_discord_join_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_learndash_discord_join_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_learndash_discord_dm_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_learndash_discord_dm_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_learndash_discord_dm_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_learndash_discord_dm_channel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_course_complete_dm_for%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_course_complete_dm_for%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_course_complete_dm_for%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_course_complete_dm_for%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_lesson_complete_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_lesson_complete_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_lesson_complete_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_lesson_complete_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_topic_complete_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_topic_complete_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_topic_complete_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_topic_complete_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_learndash_discord_quiz_complete_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_learndash_discord_quiz_complete_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_learndash_discord_quiz_complete_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_learndash_discord_quiz_complete_dm_for_%'"
