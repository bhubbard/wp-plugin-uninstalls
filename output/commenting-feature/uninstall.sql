-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf_opt_in', 'cf_hide_editorial_column', 'cf_permissions', 'cf_give_alert_message', 'cf_suggestion_mode_option_name', 'cf_specific_post_categories_values', 'cf_specific_post_types_values', 'cf_hide_floating_icons', 'cf_show_multicollab_sidebar', 'cf_welcome_dashboard_completed_tour', 'cf_admin_notif', 'cf_slack_notification_resolve_comment', 'cf_slack_notification_add_comment', 'cf_slack_notification_add_suggestion', 'cf_slack_notification_accept_reject_suggestion', 'access_token', 'user_access_token', 'channel_id', 'cf_slack_webhook', 'cf_show_infoboard', 'cf_slack_channels', 'cf_disable_checklist', 'cf_disable_suggestion', 'cf_disable_real_time_editing', 'cf_checklist_option_name', 'cf_disable_checklist_publish_button', 'cf_specific_post_types_checklist_values', 'cf_expire_date', 'cf_license_status', 'cf_activated_license_details', 'cf_system_users', 'gc_users_list', 'cf_promotional_banner_request_data', 'cf_promotional_banner_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_realtime_collaborators_activity', '_sb_suggestion_history', 'mc_updated', '_current_drafts', 'open_cf_count', 'last_user_edited', '_autodraft_ids', 'open_cf_comment_key', '_is_real_time_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_realtime_collaborators_activity', '_sb_suggestion_history', 'mc_updated', '_current_drafts', 'open_cf_count', 'last_user_edited', '_autodraft_ids', 'open_cf_comment_key', '_is_real_time_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_realtime_collaborators_activity', '_sb_suggestion_history', 'mc_updated', '_current_drafts', 'open_cf_count', 'last_user_edited', '_autodraft_ids', 'open_cf_comment_key', '_is_real_time_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_realtime_collaborators_activity', '_sb_suggestion_history', 'mc_updated', '_current_drafts', 'open_cf_count', 'last_user_edited', '_autodraft_ids', 'open_cf_comment_key', '_is_real_time_mode');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'th_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'th_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'th_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'th_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'th%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'th%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'th%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'th%';

