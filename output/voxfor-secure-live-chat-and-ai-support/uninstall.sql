-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voxfseli_bot_enabled', 'voxfseli_bot_welcome_message', 'voxfseli_bot_fallback_message', 'voxfseli_bot_email_enabled', 'voxfseli_bot_require_email', 'voxfseli_bot_email_collection_message', 'voxfseli_bot_response_delay', 'voxfseli_bot_handover_keywords', 'voxfseli_bot_max_responses', 'voxfseli_use_simple_chat', 'voxfseli_settings', 'voxfseli_plugin_activated', 'voxfseli_analytics_data', 'voxfseli_heartbeat_errors', 'voxfseli_ai_table_check', 'voxfseli_db_version', 'voxfseli_widget_settings', 'voxfseli_activation_time', 'voxfseli_marketing_spend', 'voxfseli_agent_hourly_cost', 'voxfseli_ai_contact_cache', 'voxfseli_knowledge_base_json', 'voxfseli_knowledge_base', 'voxfseli_auto_responses', 'voxfseli_keyword_responses', 'voxfseli_automations_enabled', 'voxfseli_bot_outside_hours_only', 'voxfseli_business_hours', 'voxfseli_polling_interval', 'voxfseli_presence_tracking', 'current_theme', 'smtp_host', 'voxfseli_file_settings', 'voxfseli_mobile_settings', 'voxfseli_notification_settings', 'voxfseli_theme_compatibility', 'voxfseli_disable_user_tracking', 'voxfseli_knowledge_data', 'voxfseli_agent_status_cache', 'voxfseli_agent_status_change_notification');
DELETE FROM wp_options WHERE option_name LIKE 'voxfseli_user_tracking_%';
DELETE FROM wp_options WHERE option_name LIKE 'voxfseli_heartbeat_response_%';
DELETE FROM wp_options WHERE option_name LIKE '%_user';
DELETE FROM wp_options WHERE option_name LIKE 'voxfseli_proactive_message_%';
DELETE FROM wp_options WHERE option_name LIKE 'voxfseli_proactive_form_%';
DELETE FROM wp_options WHERE option_name LIKE 'voxfseli_visitor_department_%';
DELETE FROM wp_options WHERE option_name LIKE 'voxfseli_cf7_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('voxfseli_agent_status', 'voxfseli_agent_status_text', 'voxfseli_last_activity', 'voxfseli_page_settings', 'voxfseli_last_message_check');
DELETE FROM wp_usermeta WHERE meta_key IN ('voxfseli_agent_status', 'voxfseli_agent_status_text', 'voxfseli_last_activity', 'voxfseli_page_settings', 'voxfseli_last_message_check');
DELETE FROM wp_termmeta WHERE meta_key IN ('voxfseli_agent_status', 'voxfseli_agent_status_text', 'voxfseli_last_activity', 'voxfseli_page_settings', 'voxfseli_last_message_check');
DELETE FROM wp_commentmeta WHERE meta_key IN ('voxfseli_agent_status', 'voxfseli_agent_status_text', 'voxfseli_last_activity', 'voxfseli_page_settings', 'voxfseli_last_message_check');

