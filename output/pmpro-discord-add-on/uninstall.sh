#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ets_pmpro_discord_uuid_file_name'
wp option delete 'ets_pmpro_discord_log_api_response'
wp option delete 'ets_category_channel_mappings'
wp option delete 'ets_pmpro_discord_general_channel_id'
wp option delete 'ets_pmpro_discord_send_expiration_warning_dm'
wp option delete 'ets_pmpro_discord_bot_token'
wp option delete 'ets_pmpro_discord_expiration_warning_message'
wp option delete 'ets_pmpro_discord_expiration_expired_message'
wp option delete 'ets_pmpro_discord_welcome_message'
wp option delete 'ets_pmpro_discord_cancel_message'
wp option delete 'ets_pmpro_discord_embed_messaging_feature'
wp option delete 'ets_pmpro_retry_failed_api'
wp option delete 'ets_pmpro_retry_api_count'
wp option delete 'ets_pmpro_discord_client_id'
wp option delete 'ets_pmpro_discord_client_secret'
wp option delete 'ets_pmpro_discord_redirect_url'
wp option delete 'ets_pmpro_allow_none_member'
wp option delete 'ets_pmpro_discord_guild_id'
wp option delete '_ets_pmpro_discord_default_role_id'
wp option delete 'ets_pmpor_discord_role_mapping'
wp option delete 'ets_pmpro_discord_send_welcome_dm'
wp option delete 'ets_pmpro_discord_all_roles'
wp option delete 'ets_pmpro_discord_roles_color'
wp option delete 'ets_pmpro_member_kick_out'
wp option delete 'ets_pmpro_discord_send_membership_expired_dm'
wp option delete 'ets_pmpro_discord_send_membership_cancel_dm'
wp option delete 'ets_pmpro_discord_payment_failed'
wp option delete 'ets_pmpro_discord_job_queue_concurrency'
wp option delete 'ets_pmpro_discord_job_queue_batch_size'
wp option delete 'ets_pmpro_discord_btn_color'
wp option delete 'ets_pmpro_btn_disconnect_color'
wp option delete 'ets_pmpro_discord_loggedout_btn_text'
wp option delete 'ets_pmpro_discord_loggedin_btn_text'
wp option delete 'ets_pmpro_disconnect_btn_text'
wp option delete 'ets_pmpro_discord_role_will_assign_text'
wp option delete 'ets_pmpro_discord_role_assigned_text'
wp option delete 'ets_admin_level_deleted'
wp option delete 'ets_pmpro_discord_login_with_discord'
wp option delete 'ets_queue_of_pmpro_members'
wp option delete 'ets_pmpro_discord_force_login_with_discord'
wp option delete 'ets_pmpro_discord_data_erases'
wp option delete 'ets_pmpro_discord_expired_message'
wp option delete 'pmpro_member_profile_edit_page_id'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'ets_pmrpo_discord_schedule_expiration_warnings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_dismissed_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_dismissed_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_dismissed_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_dismissed_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_pmpro_discord_expitration_warning_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_pmpro_discord_expitration_warning_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_pmpro_discord_expitration_warning_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_pmpro_discord_expitration_warning_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_dm_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_dm_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_dm_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_dm_channel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_pmpro_discord_expired_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_pmpro_discord_expired_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_pmpro_discord_expired_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_pmpro_discord_expired_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_pmpro_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_pmpro_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_pmpro_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_pmpro_discord_welcome_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_pmpro_discord_cancel_dm_for_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_pmpro_discord_cancel_dm_for_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_pmpro_discord_cancel_dm_for_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_pmpro_discord_cancel_dm_for_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_expires_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_expires_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_expires_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_expires_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_role_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_role_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_role_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_role_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_join_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_join_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_join_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_join_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_needs_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_needs_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_needs_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_needs_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_role_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_role_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_role_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_role_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ets_pmpro_discord_default_role_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ets_pmpro_discord_default_role_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ets_pmpro_discord_default_role_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ets_pmpro_discord_default_role_id'"
