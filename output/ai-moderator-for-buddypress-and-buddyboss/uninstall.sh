#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_moderator_for_buddypress_moderation_enabled'
wp option delete 'ai_moderator_for_buddypress_prohibited_words'
wp option delete 'ai_moderator_for_buddypress_openai_api_key'
wp option delete 'ai_moderator_for_buddypress_ai_model'
wp option delete 'ai_moderator_for_buddypress_notification_text'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Clear Cron Jobs
wp cron event delete 'ai_moderator_check'

