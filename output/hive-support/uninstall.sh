#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'hs_default_mailbox_id'
wp option delete 'hs_global_settings'
wp option delete 'hs_support_page_url'
wp option delete 'hs_help_tab_data'
wp option delete 'hs_messaging_tab_data'
wp option delete 'hs_home_tab_data'
wp option delete 'hs_ai_chat_settings'
wp option delete 'hive_support_license_expires'
wp option delete 'hs_setup_welcome_wizard'
wp option delete 'hive_lite_support_version'
wp option delete 'hive_lite_do_activation_redirect'
wp option delete 'hs_db_version_update_check'
wp option delete 'hs_db_mailbox_update_check'
wp option delete 'hs_db_ticket_seencol_update'
wp option delete 'hs_db_conversations_seencol_update'
wp option delete 'hs_db_mailbox_status_col_update'
wp option delete 'hs_db_mailbox_server_cron_job_update'
wp option delete 'hive_lite_support_ticketfield_settings'
wp option delete 'hive_lite_support_email_msgid'
wp option delete 'hive_lite_support_email_tickets'
wp option delete 'hive_lite_support_agents'
wp option delete 'hive_lite_support_agent_settings'
wp option delete 'hive_lite_support_tickets'
wp option delete 'hive_lite_support_ticket_settings'
wp option delete 'hive_lite_support_ticket_todos'
wp option delete 'hive_lite_support_responses'
wp option delete 'hive_lite_support_activities'
wp option delete 'hive_lite_support_automation'
wp option delete 'hive_lite_support_settings'
wp option delete 'hive_lite_support_intrigations'
wp option delete 'hive_lite_support_license_key'
wp option delete 'hive_lite_support_skey'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hs_agent_job_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hs_agent_job_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hs_agent_job_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hs_agent_job_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hs_agent_permissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hs_agent_permissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hs_agent_permissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hs_agent_permissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hs_agent_slack_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hs_agent_slack_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hs_agent_slack_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hs_agent_slack_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hs_agent_telegram_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hs_agent_telegram_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hs_agent_telegram_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hs_agent_telegram_id'"
