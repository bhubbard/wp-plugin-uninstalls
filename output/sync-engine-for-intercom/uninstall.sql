-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpplstp_iws_enable_chat_widget', 'rpplstp_iws_chat_widget_app_id', 'rpplstp_iws_workspace_id', 'rpplstp_iws_identity_verification_secret', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_enable_chat_widget';
DELETE FROM wp_options WHERE option_name LIKE '%_chat_widget_app_id';
DELETE FROM wp_options WHERE option_name LIKE '%_workspace_id';
DELETE FROM wp_options WHERE option_name LIKE '%_identity_verification_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_connection_status';
DELETE FROM wp_options WHERE option_name LIKE '%_event_prefix';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_user_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_user_roles';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_background_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_sync_frequency';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_logs';
DELETE FROM wp_options WHERE option_name LIKE '%_enable_tags_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_tags_to_sync';
DELETE FROM wp_options WHERE option_name LIKE '%_access_token';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'rpplstp_iws_intercom_contact_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'rpplstp_iws_intercom_contact_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'rpplstp_iws_intercom_contact_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'rpplstp_iws_intercom_contact_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_intercom_contact_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_intercom_contact_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_intercom_contact_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_intercom_contact_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_synced_roles';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_synced_roles';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_synced_roles';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_synced_roles';

