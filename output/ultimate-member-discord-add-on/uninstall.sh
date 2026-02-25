#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ets_ultimatemember_discord_client_id'
wp option delete 'ets_ultimatemember_discord_client_secret'
wp option delete 'ets_ultimatemember_discord_bot_token'
wp option delete 'ets_ultimatemember_discord_redirect_page_id'
wp option delete 'ets_ultimatemember_discord_redirect_url'
wp option delete 'ets_ultimatemember_discord_server_id'
wp option delete 'ets_ultimatemember_discord_admin_redirect_url'
wp option delete 'ets_ultimatemember_discord_role_mapping'
wp option delete 'ets_ultimatemember_discord_default_role_id'
wp option delete 'ets_ultimatemember_discord_send_welcome_dm'
wp option delete 'ets_ultimatemember_discord_welcome_message'
wp option delete 'ets_ultimatemember_retry_failed_api'
wp option delete 'ets_ultimatemember_discord_kick_upon_disconnect'
wp option delete 'ets_ultimatemember_retry_api_count'
wp option delete 'ets_ultimatemember_discord_job_queue_concurrency'
wp option delete 'ets_ultimatemember_discord_job_queue_batch_size'
wp option delete 'ets_ultimatemember_discord_log_api_response'
wp option delete 'ets_ultimatemember_discord_embed_messaging_feature'
wp option delete 'ets_ultimatemember_discord_data_erases'
wp option delete 'ets_ultimatemember_discord_all_roles'
wp option delete 'ets_ultimatemember_discord_roles_color'
wp option delete 'ets_ultimatemember_discord_connect_button_bg_color'
wp option delete 'ets_ultimatemember_discord_disconnect_button_bg_color'
wp option delete 'ets_ultimatemember_discord_loggedin_button_text'
wp option delete 'ets_ultimatemember_discord_non_login_button_text'
wp option delete 'ets_ultimatemember_discord_disconnect_button_text'
wp option delete 'ets_ultimatemember_discord_connected_bot_name'
wp option delete 'ets_ultimatemember_discord_uuid_file_name'
wp option delete 'um_roles'
wp option delete 'um_options'
wp option delete 'refresh_1'
wp option delete 'time'
wp option delete 'refresh_2'

# Delete Transients
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimatemember_discord_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimatemember_discord_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimatemember_discord_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimatemember_discord_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimatemember_discord_role_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimatemember_discord_role_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimatemember_discord_role_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimatemember_discord_role_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimatemember_discord_default_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimatemember_discord_default_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimatemember_discord_default_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimatemember_discord_default_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimatemember_discord_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimatemember_discord_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimatemember_discord_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimatemember_discord_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimatemember_discord_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimatemember_discord_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimatemember_discord_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimatemember_discord_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimate_member_discord_dismissed_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimate_member_discord_dismissed_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimate_member_discord_dismissed_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimate_member_discord_dismissed_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimatemember_discord_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimatemember_discord_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimatemember_discord_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimatemember_discord_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimatemember_discord_expires_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimatemember_discord_expires_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimatemember_discord_expires_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimatemember_discord_expires_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimatemember_discord_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimatemember_discord_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimatemember_discord_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimatemember_discord_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimatemember_discord_dm_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimatemember_discord_dm_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimatemember_discord_dm_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimatemember_discord_dm_channel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_ultimatemember_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_ultimatemember_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_ultimatemember_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_ultimatemember_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_ultimatemember_discord_join_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_ultimatemember_discord_join_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_ultimatemember_discord_join_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_ultimatemember_discord_join_date'"
