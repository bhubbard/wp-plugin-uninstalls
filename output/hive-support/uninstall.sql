-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hs_default_mailbox_id', 'hs_global_settings', 'hs_support_page_url', 'hs_help_tab_data', 'hs_messaging_tab_data', 'hs_home_tab_data', 'hs_ai_chat_settings', 'hive_support_license_expires', 'hs_setup_welcome_wizard', 'hive_lite_support_version', 'hive_lite_do_activation_redirect', 'hs_db_version_update_check', 'hs_db_mailbox_update_check', 'hs_db_ticket_seencol_update', 'hs_db_conversations_seencol_update', 'hs_db_mailbox_status_col_update', 'hs_db_mailbox_server_cron_job_update', 'hive_lite_support_ticketfield_settings', 'hive_lite_support_email_msgid', 'hive_lite_support_email_tickets', 'hive_lite_support_agents', 'hive_lite_support_agent_settings', 'hive_lite_support_tickets', 'hive_lite_support_ticket_settings', 'hive_lite_support_ticket_todos', 'hive_lite_support_responses', 'hive_lite_support_activities', 'hive_lite_support_automation', 'hive_lite_support_settings', 'hive_lite_support_intrigations', 'hive_lite_support_license_key', 'hive_lite_support_skey');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hs_agent_job_title', 'hs_agent_permissions', 'first_name', 'last_name', 'hs_agent_slack_id', 'hs_agent_telegram_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('hs_agent_job_title', 'hs_agent_permissions', 'first_name', 'last_name', 'hs_agent_slack_id', 'hs_agent_telegram_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('hs_agent_job_title', 'hs_agent_permissions', 'first_name', 'last_name', 'hs_agent_slack_id', 'hs_agent_telegram_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hs_agent_job_title', 'hs_agent_permissions', 'first_name', 'last_name', 'hs_agent_slack_id', 'hs_agent_telegram_id');

