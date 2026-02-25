#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ets_memberpress_discord_client_id'
wp option delete 'ets_memberpress_discord_client_secret'
wp option delete 'ets_memberpress_discord_bot_token'
wp option delete 'ets_memberpress_discord_redirect_url'
wp option delete 'ets_memberpress_discord_server_id'
wp option delete 'ets_memberpress_discord_bot_auth_redirect'
wp option delete 'ets_memberpress_discord_role_mapping'
wp option delete 'ets_memberpress_discord_default_role_id'
wp option delete 'ets_memberpress_discord_allow_none_member'
wp option delete 'ets_memberpress_discord_payment_failed'
wp option delete 'ets_memberpress_discord_log_api_response'
wp option delete 'ets_memberpress_discord_retry_failed_api'
wp option delete 'ets_memberpress_discord_member_kick_out'
wp option delete 'ets_memberpress_discord_login_with_discord'
wp option delete 'ets_memberpress_discord_send_welcome_dm'
wp option delete 'ets_memberpress_discord_send_expiration_warning_dm'
wp option delete 'ets_memberpress_discord_welcome_message'
wp option delete 'ets_memberpress_discord_expiration_warning_message'
wp option delete 'ets_memberpress_discord_expiration_expired_message'
wp option delete 'ets_memberpress_discord_send_membership_expired_dm'
wp option delete 'ets_memberpress_discord_send_membership_cancel_dm'
wp option delete 'ets_memberpress_discord_cancel_message'
wp option delete 'ets_memberpress_discord_job_queue_concurrency'
wp option delete 'ets_memberpress_discord_job_queue_batch_size'
wp option delete 'ets_memberpress_discord_retry_api_count'
wp option delete 'ets_memberpress_discord_data_erases'
wp option delete 'ets_memberpress_discord_embed_messaging_feature'
wp option delete 'ets_memberpress_discord_btn_color'
wp option delete 'ets_memberpress_discord_btn_disconnect_color'
wp option delete 'ets_memberpress_discord_loggedout_btn_text'
wp option delete 'ets_memberpress_discord_loggedin_btn_text'
wp option delete 'ets_memberpress_discord_disconnect_btn_text'
wp option delete 'ets_memberpress_discord_member_facing_text'
wp option delete 'ets_memberpress_discord_uuid_file_name'
wp option delete 'ets_memberpress_discord_all_roles'
wp option delete 'ets_memberpress_discord_roles_color'
wp option delete 'ets_memberpress_discord_expired_message'
wp option delete 'ets_memberpress_discord_connected_bot_name'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_dm_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_dm_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_dm_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_dm_channel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_default_role_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_default_role_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_default_role_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_default_role_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_memberpress_discord_role_id_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_memberpress_discord_role_id_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_memberpress_discord_role_id_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_memberpress_discord_role_id_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_memberpress_discord_expitration_warning_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_memberpress_discord_expitration_warning_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_memberpress_discord_expitration_warning_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_memberpress_discord_expitration_warning_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_join_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_join_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_join_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_join_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_dismissed_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_dismissed_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_dismissed_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_dismissed_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_memberpress_discord_expired_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_memberpress_discord_expired_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_memberpress_discord_expired_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_memberpress_discord_expired_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_memberpress_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_memberpress_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_memberpress_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_memberpress_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_memberpress_discord_cancel_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_memberpress_discord_cancel_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_memberpress_discord_cancel_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_memberpress_discord_cancel_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_expires_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_expires_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_expires_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_expires_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_memberpress_discord_role_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_memberpress_discord_role_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_memberpress_discord_role_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_memberpress_discord_role_id'"
