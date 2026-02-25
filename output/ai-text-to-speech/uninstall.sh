#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_tts_do_activation_redirect'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'ai_tts_api_key'
wp option delete 'ai_tts_api_request_log'
wp option delete 'ai_tts_settings'
wp option delete 'ai_tts_dropbox_refresh_token'
wp option delete 'ai_tts_dropbox_app_key'
wp option delete 'ai_tts_dropbox_app_secret'
wp option delete 'ai_tts_dropbox_access_token'
wp option delete 'ai_tts_custom_pronunciations'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_tts_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_tts_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_tts_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_tts_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_tts_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_tts_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_tts_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_tts_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_tts_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_tts_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_tts_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_tts_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_tts_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_tts_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_tts_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_tts_file_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_tts_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_tts_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_tts_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_tts_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_tts_generated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_tts_generated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_tts_generated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_tts_generated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_tts_customise'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_tts_customise'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_tts_customise'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_tts_customise'"
