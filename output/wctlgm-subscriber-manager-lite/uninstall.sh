#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wctlgm_bot_token'
wp option delete 'wctlgm_require_activation_flow'
wp option delete 'wctlgm_allow_external_invites'
wp option delete 'wctlgm_secret_token'
wp option delete 'wctlgm_bot_url'
wp option delete 'wctlgm_channels'
wp option delete 'wctlgm_activation_flow_migrated'
wp option delete 'wctlgm_force_activation_flow'
wp option delete 'wctlgm_webhook_clicked'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wctlgm_telegram_fetch_channel_id_active'
wp transient delete 'wctlgm_channel_id_temp_store'
wp transient delete 'wctlgm_activation_flow_changed'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_telegram_channel_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_telegram_channel_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_telegram_channel_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_telegram_channel_ids'"
