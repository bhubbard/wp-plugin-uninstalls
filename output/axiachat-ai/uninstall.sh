#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aichat_debug_enabled'
wp option delete 'aichat_addon_ai_tools_enabled'
wp option delete 'aichat_addon_mcp_enabled'
wp option delete 'aichat_default_bot_seeded'
wp option delete 'aichat_openai_api_key'
wp option delete 'aichat_chat_color'
wp option delete 'aichat_position'
wp option delete 'aichat_branding_enabled'
wp option delete 'aichat_branding_text'
wp option delete 'aichat_branding_url'
wp option delete 'aichat_branding_icon'
wp option delete 'aichat_security_policy'
wp option delete 'aichat_datetime_injection_enabled'
wp option delete 'aichat_inject_user_context_enabled'
wp option delete 'aichat_easy_config_completed'
wp option delete 'aichat_easy_config_do_redirect'
wp option delete 'aichat_test_page_id'
wp option delete 'aichat_web_search_migration_v250'
wp option delete 'aichat_global_bot_enabled'
wp option delete 'aichat_global_bot_slug'
wp option delete 'aichat_tools_ssa_enabled'
wp option delete 'aichat_embed_allowed_origins'
wp option delete 'aichat_tools_rules_map'
wp option delete 'aichat_tools_capability_settings'
wp option delete 'aichat_local_tools_synced'
wp option delete 'aichat_appointments_webhook_url'
wp option delete 'aichat_appointments_settings'
wp option delete 'aichat_appointments_external_count'
wp option delete 'aichat_addon_appointments_enabled'
wp option delete 'aichat_appointments_db_version'
wp option delete 'aichat_usage_limits_enabled'
wp option delete 'aichat_leads_gsheets_spreadsheet_id'
wp option delete 'aichat_leads_gsheets_sheet_name'
wp option delete 'aichat_leads_webhook_url'
wp option delete 'aichat_leads_settings'
wp option delete 'aichat_leads_external_count'
wp option delete 'aichat_leads_pro_license'
wp option delete 'aichat_addon_leads_enabled'
wp option delete 'aichat_livechat_available'
wp option delete 'aichat_livechat_external_destination'
wp option delete 'aichat_livechat_slack_enabled'
wp option delete 'aichat_livechat_availability_mode'
wp option delete 'aichat_livechat_working_hours'
wp option delete 'aichat_livechat_estimated_wait'
wp option delete 'aichat_livechat_agent_timeout'
wp option delete 'aichat_livechat_queue_message'
wp option delete 'aichat_livechat_welcome_message'
wp option delete 'aichat_livechat_offline_message'
wp option delete 'aichat_livechat_auto_handoff'
wp option delete 'aichat_livechat_handoff_keywords'
wp option delete 'aichat_livechat_slack_webhook_url'
wp option delete 'aichat_livechat_slack_channel'
wp option delete 'aichat_livechat_slack_send_history'
wp option delete 'aichat_livechat_slack_bot_token'
wp option delete 'aichat_livechat_telegram_bot_token'
wp option delete 'aichat_livechat_telegram_chat_id'
wp option delete 'aichat_livechat_telegram_send_history'
wp option delete 'aichat_livechat_webhook_url'
wp option delete 'aichat_livechat_notification_sound'
wp option delete 'aichat_livechat_email_notify_enabled'
wp option delete 'aichat_livechat_email_notify_address'
wp option delete 'aichat_livechat_email_subject'
wp option delete 'aichat_livechat_email_body'
wp option delete 'aichat_addon_livechat_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aichat_telegram_session_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aichat_telegram_chat_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aichat_telegram_msg_%'"
wp option delete 'aichat_livechat_webhook_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aichat_slack_user_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aichat_telegram_user_%'"
wp option delete 'aichat_mcp_servers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aichat_mcp_server_%'"
wp option delete 'aichat_logging_enabled'
wp option delete 'aichat_agency_enabled'
wp option delete 'aichat_usage_max_daily_total'
wp option delete 'aichat_usage_max_daily_per_user'
wp option delete 'aichat_usage_per_user_message'
wp option delete 'aichat_usage_daily_total_behavior'
wp option delete 'aichat_usage_daily_total_message'
wp option delete 'aichat_use_provider_architecture'
wp option delete 'aichat_select_posts_mode'
wp option delete 'aichat_select_pages_mode'
wp option delete 'aichat_select_products_mode'
wp option delete 'aichat_select_uploaded_mode'
wp option delete 'aichat_rag_enabled'
wp option delete 'aichat_selected_items'
wp option delete 'aichat_pro_license_key'
wp option delete 'aichat_moderation_enabled'
wp option delete 'aichat_moderation_rejection_message'
wp option delete 'aichat_moderation_banned_ips'
wp option delete 'aichat_moderation_banned_words'
wp option delete 'aichat_moderation_use_default_words'
wp option delete 'aichat_moderation_external_enabled'
wp option delete 'aichat_gemini_default_model'
wp option delete 'aichat_claude_api_key'
wp option delete 'aichat_gemini_api_key'
wp option delete 'aichat_gdpr_consent_enabled'
wp option delete 'aichat_gdpr_text'
wp option delete 'aichat_gdpr_button'
wp option delete 'aichat_addon_connect_enabled'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'aichat_create_test_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aichat_block_%' OR option_name LIKE '_site_transient_aichat_block_%'"
wp transient delete 'aichat_gcal_oauth_state'
wp transient delete 'aichat_gsheets_oauth_state'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aichat_modify_add_%' OR option_name LIKE '_site_transient_aichat_modify_add_%'"
wp transient delete 'aichat_license_valid'
wp transient delete 'aichat_leads_license_status'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'aichat_appointments_send_reminders'
wp cron event delete 'aichat_process_embeddings_batch'
wp cron event delete 'aichat_cron_process_contexts'
wp cron event delete 'aichat_autosync_hourly'
wp cron event delete 'aichat_cleanup_tool_states'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lead_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lead_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lead_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lead_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lead_telefono'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lead_telefono'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lead_telefono'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lead_telefono'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lead_empresa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lead_empresa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lead_empresa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lead_empresa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lead_interes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lead_interes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lead_interes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lead_interes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lead_notas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lead_notas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lead_notas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lead_notas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lead_bot_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lead_bot_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lead_bot_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lead_bot_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lead_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lead_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lead_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lead_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lead_estado'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lead_estado'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lead_estado'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lead_estado'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lead_campos_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lead_campos_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lead_campos_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lead_campos_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_mime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_mime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_mime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_mime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_source_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_source_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_source_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_source_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_chunk_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_chunk_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_chunk_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_chunk_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_upload_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_upload_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_upload_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_upload_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_chunk_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_chunk_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_chunk_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_chunk_index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_sha256'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_sha256'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_sha256'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_sha256'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aichat_context_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aichat_context_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aichat_context_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aichat_context_id'"
