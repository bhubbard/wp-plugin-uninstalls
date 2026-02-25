#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ets_profilepress_discord_client_id'
wp option delete 'ets_profilepress_discord_admin_redirect_url'
wp option delete 'ets_profilepress_discord_server_id'
wp option delete 'ets_profilepress_discord_client_secret'
wp option delete 'ets_profilepress_discord_bot_token'
wp option delete 'ets_profilepress_discord_redirect_page_id'
wp option delete 'ets_profilepress_discord_redirect_url'
wp option delete 'ets_profilepress_discord_role_mapping'
wp option delete 'ets_profilepress_discord_all_roles'
wp option delete 'ets_profilepress_discord_roles_color'
wp option delete 'ets_profilepress_discord_default_role_id'
wp option delete 'ets_profilepress_discord_allow_none_customer'
wp option delete 'ets_profilepress_discord_send_welcome_dm'
wp option delete 'ets_profilepress_discord_welcome_message'
wp option delete 'ets_profilepress_discord_send_purchase_dm'
wp option delete 'ets_profilepress_discord_purchase_message'
wp option delete 'ets_profilepress_discord_send_cancelled_dm'
wp option delete 'ets_profilepress_discord_cancelled_message'
wp option delete 'ets_profilepress_discord_send_expired_dm'
wp option delete 'ets_profilepress_discord_expired_message'
wp option delete 'ets_profilepress_discord_retry_failed_api'
wp option delete 'ets_profilepress_discord_kick_upon_disconnect'
wp option delete 'ets_profilepress_discord_retry_api_count'
wp option delete 'ets_profilepress_discord_job_queue_concurrency'
wp option delete 'ets_profilepress_discord_job_queue_batch_size'
wp option delete 'ets_profilepress_discord_log_api_response'
wp option delete 'ets_profilepress_discord_connect_button_bg_color'
wp option delete 'ets_profilepress_discord_disconnect_button_bg_color'
wp option delete 'ets_profilepress_discord_non_login_button_text'
wp option delete 'ets_profilepress_discord_loggedin_button_text'
wp option delete 'ets_profilepress_discord_disconnect_button_text'
wp option delete 'ets_profilepress_discord_connected_bot_name'
wp option delete 'ets_profilepress_discord_uuid_file_name'
wp option delete 'ets_profilepress_discord_send_purchase_message'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_profilepress_discord_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_profilepress_discord_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_profilepress_discord_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_profilepress_discord_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_profilepress_discord_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_profilepress_discord_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_profilepress_discord_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_profilepress_discord_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_profilepress_discord_role_id_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_profilepress_discord_role_id_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_profilepress_discord_role_id_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_profilepress_discord_role_id_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_profilepress_discord_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_profilepress_discord_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_profilepress_discord_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_profilepress_discord_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_profilepress_discord_dismissed_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_profilepress_discord_dismissed_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_profilepress_discord_dismissed_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_profilepress_discord_dismissed_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_profilepress_discord_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_profilepress_discord_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_profilepress_discord_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_profilepress_discord_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_profilepress_discord_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_profilepress_discord_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_profilepress_discord_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_profilepress_discord_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_profilepress_discord_expires_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_profilepress_discord_expires_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_profilepress_discord_expires_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_profilepress_discord_expires_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_profilepress_discord_last_default_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_profilepress_discord_last_default_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_profilepress_discord_last_default_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_profilepress_discord_last_default_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_profilepress_discord_join_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_profilepress_discord_join_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_profilepress_discord_join_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_profilepress_discord_join_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_profilepress_discord_dm_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_profilepress_discord_dm_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_profilepress_discord_dm_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_profilepress_discord_dm_channel'"
