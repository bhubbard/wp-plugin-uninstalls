-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ets_pmpro_discord_uuid_file_name', 'ets_pmpro_discord_log_api_response', 'ets_category_channel_mappings', 'ets_pmpro_discord_general_channel_id', 'ets_pmpro_discord_send_expiration_warning_dm', 'ets_pmpro_discord_bot_token', 'ets_pmpro_discord_expiration_warning_message', 'ets_pmpro_discord_expiration_expired_message', 'ets_pmpro_discord_welcome_message', 'ets_pmpro_discord_cancel_message', 'ets_pmpro_discord_embed_messaging_feature', 'ets_pmpro_retry_failed_api', 'ets_pmpro_retry_api_count', 'ets_pmpro_discord_client_id', 'ets_pmpro_discord_client_secret', 'ets_pmpro_discord_redirect_url', 'ets_pmpro_allow_none_member', 'ets_pmpro_discord_guild_id', '_ets_pmpro_discord_default_role_id', 'ets_pmpor_discord_role_mapping', 'ets_pmpro_discord_send_welcome_dm', 'ets_pmpro_discord_all_roles', 'ets_pmpro_discord_roles_color', 'ets_pmpro_member_kick_out', 'ets_pmpro_discord_send_membership_expired_dm', 'ets_pmpro_discord_send_membership_cancel_dm', 'ets_pmpro_discord_payment_failed', 'ets_pmpro_discord_job_queue_concurrency', 'ets_pmpro_discord_job_queue_batch_size', 'ets_pmpro_discord_btn_color', 'ets_pmpro_btn_disconnect_color', 'ets_pmpro_discord_loggedout_btn_text', 'ets_pmpro_discord_loggedin_btn_text', 'ets_pmpro_disconnect_btn_text', 'ets_pmpro_discord_role_will_assign_text', 'ets_pmpro_discord_role_assigned_text', 'ets_admin_level_deleted', 'ets_pmpro_discord_login_with_discord', 'ets_queue_of_pmpro_members', 'ets_pmpro_discord_force_login_with_discord', 'ets_pmpro_discord_data_erases', 'ets_pmpro_discord_expired_message', 'pmpro_member_profile_edit_page_id', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ets_pmpro_discord_dismissed_notification', '_ets_pmpro_discord_access_token', '_ets_pmpro_discord_user_id', '_ets_pmpro_discord_dm_channel', '_ets_pmpro_discord_refresh_token', '_ets_pmpro_discord_expires_in', '_ets_pmpro_discord_role_ids', '_ets_pmpro_discord_join_date', 'email_needs_update', '_ets_pmpro_discord_username', '_ets_pmpro_discord_role_id', '_ets_pmpro_discord_default_role_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ets_pmpro_discord_dismissed_notification', '_ets_pmpro_discord_access_token', '_ets_pmpro_discord_user_id', '_ets_pmpro_discord_dm_channel', '_ets_pmpro_discord_refresh_token', '_ets_pmpro_discord_expires_in', '_ets_pmpro_discord_role_ids', '_ets_pmpro_discord_join_date', 'email_needs_update', '_ets_pmpro_discord_username', '_ets_pmpro_discord_role_id', '_ets_pmpro_discord_default_role_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ets_pmpro_discord_dismissed_notification', '_ets_pmpro_discord_access_token', '_ets_pmpro_discord_user_id', '_ets_pmpro_discord_dm_channel', '_ets_pmpro_discord_refresh_token', '_ets_pmpro_discord_expires_in', '_ets_pmpro_discord_role_ids', '_ets_pmpro_discord_join_date', 'email_needs_update', '_ets_pmpro_discord_username', '_ets_pmpro_discord_role_id', '_ets_pmpro_discord_default_role_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ets_pmpro_discord_dismissed_notification', '_ets_pmpro_discord_access_token', '_ets_pmpro_discord_user_id', '_ets_pmpro_discord_dm_channel', '_ets_pmpro_discord_refresh_token', '_ets_pmpro_discord_expires_in', '_ets_pmpro_discord_role_ids', '_ets_pmpro_discord_join_date', 'email_needs_update', '_ets_pmpro_discord_username', '_ets_pmpro_discord_role_id', '_ets_pmpro_discord_default_role_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_pmpro_discord_expitration_warning_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_pmpro_discord_expitration_warning_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_pmpro_discord_expitration_warning_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_pmpro_discord_expitration_warning_dm_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_pmpro_discord_expired_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_pmpro_discord_expired_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_pmpro_discord_expired_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_pmpro_discord_expired_dm_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_pmpro_discord_welcome_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_pmpro_discord_welcome_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_pmpro_discord_welcome_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_pmpro_discord_welcome_dm_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_pmpro_discord_cancel_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_pmpro_discord_cancel_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_pmpro_discord_cancel_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_pmpro_discord_cancel_dm_for_%';

