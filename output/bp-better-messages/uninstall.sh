#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'better_messages_openai_error'
wp option delete 'bm-emoji-set-2'
wp option delete 'bp_better_messages_giphy_error'
wp option delete 'hp_user_enable_display'
wp option delete 'hp_vendor_enable_display'
wp option delete 'OneSignalWPSetting'
wp option delete 'daftplug_progressify_vapid_keys'
wp option delete 'bpbm_packs_cache'
wp option delete 'bp_better_messages_stipop_error'
wp option delete 'wcvendors_vendor_dashboard_page_id'
wp option delete 'wcfm_endpoints'
wp option delete 'bm-emoji-hash'
wp option delete 'bp-better-chat-settings'
wp option delete 'better_messages_2_db_version'
wp option delete 'better_messages_db_migrated'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'bp-better-chat-settings-updated'
wp option delete 'beehive_opts'
wp option delete 'better-messages-email-custom-html'
wp option delete 'bm_sync_user_roles_index_start'
wp option delete 'bm_sync_user_roles_index_finish'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'bm_openai_models'
wp transient delete 'better_messages_ai_request_secret'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'better_messages_ai_ensure_completion_job'
wp cron event delete 'better_messages_ai_bot_ensure_completion'
wp cron event delete 'better_messages_ai_moderate_message'
wp cron event delete 'better_messages_chat_room_sync_auto_add_users'
wp cron event delete 'better_messages_cleaner_job'
wp cron event delete 'better_messages_on_deleted_user'
wp cron event delete 'better_messages_send_notifications'
wp cron event delete 'better_messages_clean_expired_ban'
wp cron event delete 'better_messages_sync_user_index_weekly'
wp cron event delete 'better_messages_sync_user_index'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm-ai-chat-bot-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm-ai-chat-bot-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm-ai-chat-bot-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm-ai-chat-bot-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_voice_transcription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_voice_transcription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_voice_transcription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_voice_transcription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp-better-messages-original-name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp-better-messages-original-name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp-better-messages-original-name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp-better-messages-original-name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_openai_generated_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_openai_generated_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_openai_generated_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_openai_generated_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_openai_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_openai_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_openai_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_openai_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_openai_quality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_openai_quality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_openai_quality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_openai_quality'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_openai_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_openai_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_openai_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_openai_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bm_openai_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bm_openai_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bm_openai_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bm_openai_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp-better-messages-message-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp-better-messages-message-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp-better-messages-message-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp-better-messages-message-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp-better-messages-thread-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp-better-messages-thread-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp-better-messages-thread-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp-better-messages-thread-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp-better-messages-attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp-better-messages-attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp-better-messages-attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp-better-messages-attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp-better-messages-uploader-user-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp-better-messages-uploader-user-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp-better-messages-uploader-user-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp-better-messages-uploader-user-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp-better-messages-upload-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp-better-messages-upload-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp-better-messages-upload-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp-better-messages-upload-time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'better-messages-waiting-for-message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'better-messages-waiting-for-message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'better-messages-waiting-for-message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'better-messages-waiting-for-message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_bm_livechat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_bm_livechat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_bm_livechat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_bm_livechat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpbm_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpbm_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpbm_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpbm_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpbm_wc_vendors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpbm_wc_vendors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpbm_wc_vendors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpbm_wc_vendors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pv_shop_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pv_shop_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pv_shop_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pv_shop_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_store_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'store_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_profile_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_profile_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_profile_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_profile_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_tagline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disableReply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disableReply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disableReply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disableReply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thread_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thread_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thread_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thread_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'message_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'message_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'message_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'message_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpbm-chat-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpbm-chat-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpbm-chat-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpbm-chat-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpbm-chat-can-join'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpbm-chat-can-join'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpbm-chat-can-join'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpbm-chat-can-join'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpbm-chat-auto-add'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpbm-chat-auto-add'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpbm-chat-auto-add'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpbm-chat-auto-add'"
