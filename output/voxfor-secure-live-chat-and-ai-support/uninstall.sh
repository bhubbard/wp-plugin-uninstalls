#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voxfseli_bot_enabled'
wp option delete 'voxfseli_bot_welcome_message'
wp option delete 'voxfseli_bot_fallback_message'
wp option delete 'voxfseli_bot_email_enabled'
wp option delete 'voxfseli_bot_require_email'
wp option delete 'voxfseli_bot_email_collection_message'
wp option delete 'voxfseli_bot_response_delay'
wp option delete 'voxfseli_bot_handover_keywords'
wp option delete 'voxfseli_bot_max_responses'
wp option delete 'voxfseli_use_simple_chat'
wp option delete 'voxfseli_settings'
wp option delete 'voxfseli_plugin_activated'
wp option delete 'voxfseli_analytics_data'
wp option delete 'voxfseli_heartbeat_errors'
wp option delete 'voxfseli_ai_table_check'
wp option delete 'voxfseli_db_version'
wp option delete 'voxfseli_widget_settings'
wp option delete 'voxfseli_activation_time'
wp option delete 'voxfseli_marketing_spend'
wp option delete 'voxfseli_agent_hourly_cost'
wp option delete 'voxfseli_ai_contact_cache'
wp option delete 'voxfseli_knowledge_base_json'
wp option delete 'voxfseli_knowledge_base'
wp option delete 'voxfseli_auto_responses'
wp option delete 'voxfseli_keyword_responses'
wp option delete 'voxfseli_automations_enabled'
wp option delete 'voxfseli_bot_outside_hours_only'
wp option delete 'voxfseli_business_hours'
wp option delete 'voxfseli_polling_interval'
wp option delete 'voxfseli_presence_tracking'
wp option delete 'current_theme'
wp option delete 'smtp_host'
wp option delete 'voxfseli_file_settings'
wp option delete 'voxfseli_mobile_settings'
wp option delete 'voxfseli_notification_settings'
wp option delete 'voxfseli_theme_compatibility'
wp option delete 'voxfseli_disable_user_tracking'
wp option delete 'voxfseli_knowledge_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfseli_user_tracking_%' OR option_name LIKE '_site_transient_voxfseli_user_tracking_%'"
wp transient delete 'voxfseli_agent_status_cache'
wp transient delete 'voxfseli_agent_status_change_notification'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfseli_heartbeat_response_%' OR option_name LIKE '_site_transient_voxfseli_heartbeat_response_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_user' OR option_name LIKE '_site_transient_%_user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfseli_proactive_message_%' OR option_name LIKE '_site_transient_voxfseli_proactive_message_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfseli_proactive_form_%' OR option_name LIKE '_site_transient_voxfseli_proactive_form_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfseli_visitor_department_%' OR option_name LIKE '_site_transient_voxfseli_visitor_department_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfseli_cf7_data_%' OR option_name LIKE '_site_transient_voxfseli_cf7_data_%'"

# Clear Cron Jobs
wp cron event delete 'voxfseli_cleanup_files'
wp cron event delete 'voxfseli_cleanup_transients'
wp cron event delete 'voxfseli_daily_cleanup'
wp cron event delete 'voxfseli_process_advanced_analytics'
wp cron event delete 'voxfseli_daily_analytics'
wp cron event delete 'voxfseli_process_scheduled_automations'
wp cron event delete 'voxfseli_cleanup_temp_files'
wp cron event delete 'voxfseli_scan_uploaded_files'
wp cron event delete 'voxfseli_check_sla_breaches'
wp cron event delete 'voxfseli_send_daily_summary'
wp cron event delete 'voxfseli_cleanup_old_notifications'
wp cron event delete 'voxfseli_cleanup_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voxfseli_agent_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voxfseli_agent_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voxfseli_agent_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voxfseli_agent_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voxfseli_agent_status_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voxfseli_agent_status_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voxfseli_agent_status_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voxfseli_agent_status_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voxfseli_last_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voxfseli_last_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voxfseli_last_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voxfseli_last_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voxfseli_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voxfseli_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voxfseli_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voxfseli_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voxfseli_last_message_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voxfseli_last_message_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voxfseli_last_message_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voxfseli_last_message_check'"
