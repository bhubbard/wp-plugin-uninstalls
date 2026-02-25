-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ets_memberpress_discord_client_id', 'ets_memberpress_discord_client_secret', 'ets_memberpress_discord_bot_token', 'ets_memberpress_discord_redirect_url', 'ets_memberpress_discord_server_id', 'ets_memberpress_discord_bot_auth_redirect', 'ets_memberpress_discord_role_mapping', 'ets_memberpress_discord_default_role_id', 'ets_memberpress_discord_allow_none_member', 'ets_memberpress_discord_payment_failed', 'ets_memberpress_discord_log_api_response', 'ets_memberpress_discord_retry_failed_api', 'ets_memberpress_discord_member_kick_out', 'ets_memberpress_discord_login_with_discord', 'ets_memberpress_discord_send_welcome_dm', 'ets_memberpress_discord_send_expiration_warning_dm', 'ets_memberpress_discord_welcome_message', 'ets_memberpress_discord_expiration_warning_message', 'ets_memberpress_discord_expiration_expired_message', 'ets_memberpress_discord_send_membership_expired_dm', 'ets_memberpress_discord_send_membership_cancel_dm', 'ets_memberpress_discord_cancel_message', 'ets_memberpress_discord_job_queue_concurrency', 'ets_memberpress_discord_job_queue_batch_size', 'ets_memberpress_discord_retry_api_count', 'ets_memberpress_discord_data_erases', 'ets_memberpress_discord_embed_messaging_feature', 'ets_memberpress_discord_btn_color', 'ets_memberpress_discord_btn_disconnect_color', 'ets_memberpress_discord_loggedout_btn_text', 'ets_memberpress_discord_loggedin_btn_text', 'ets_memberpress_discord_disconnect_btn_text', 'ets_memberpress_discord_member_facing_text', 'ets_memberpress_discord_uuid_file_name', 'ets_memberpress_discord_all_roles', 'ets_memberpress_discord_roles_color', 'ets_memberpress_discord_expired_message', 'ets_memberpress_discord_connected_bot_name', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ets_memberpress_discord_dm_channel', '_ets_memberpress_discord_access_token', '_ets_memberpress_discord_default_role_id', '_ets_memberpress_discord_user_id', '_ets_memberpress_discord_username', '_ets_memberpress_discord_join_date', '_ets_memberpress_discord_dismissed_notification', '_ets_memberpress_discord_avatar', '_ets_memberpress_discord_refresh_token', '_ets_memberpress_discord_expires_in', '_ets_memberpress_discord_role_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ets_memberpress_discord_dm_channel', '_ets_memberpress_discord_access_token', '_ets_memberpress_discord_default_role_id', '_ets_memberpress_discord_user_id', '_ets_memberpress_discord_username', '_ets_memberpress_discord_join_date', '_ets_memberpress_discord_dismissed_notification', '_ets_memberpress_discord_avatar', '_ets_memberpress_discord_refresh_token', '_ets_memberpress_discord_expires_in', '_ets_memberpress_discord_role_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ets_memberpress_discord_dm_channel', '_ets_memberpress_discord_access_token', '_ets_memberpress_discord_default_role_id', '_ets_memberpress_discord_user_id', '_ets_memberpress_discord_username', '_ets_memberpress_discord_join_date', '_ets_memberpress_discord_dismissed_notification', '_ets_memberpress_discord_avatar', '_ets_memberpress_discord_refresh_token', '_ets_memberpress_discord_expires_in', '_ets_memberpress_discord_role_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ets_memberpress_discord_dm_channel', '_ets_memberpress_discord_access_token', '_ets_memberpress_discord_default_role_id', '_ets_memberpress_discord_user_id', '_ets_memberpress_discord_username', '_ets_memberpress_discord_join_date', '_ets_memberpress_discord_dismissed_notification', '_ets_memberpress_discord_avatar', '_ets_memberpress_discord_refresh_token', '_ets_memberpress_discord_expires_in', '_ets_memberpress_discord_role_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_memberpress_discord_role_id_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_memberpress_discord_role_id_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_memberpress_discord_role_id_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_memberpress_discord_role_id_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_memberpress_discord_expitration_warning_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_memberpress_discord_expitration_warning_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_memberpress_discord_expitration_warning_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_memberpress_discord_expitration_warning_dm_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_memberpress_discord_expired_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_memberpress_discord_expired_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_memberpress_discord_expired_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_memberpress_discord_expired_dm_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_memberpress_discord_welcome_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_memberpress_discord_welcome_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_memberpress_discord_welcome_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_memberpress_discord_welcome_dm_for_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ets_memberpress_discord_cancel_dm_for_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ets_memberpress_discord_cancel_dm_for_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ets_memberpress_discord_cancel_dm_for_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ets_memberpress_discord_cancel_dm_for_%';

