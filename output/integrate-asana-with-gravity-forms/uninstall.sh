#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iawgf_migrated_slug_to_new'
wp option delete 'iawgf_backup_settings'
wp option delete 'iawgf_settings_source'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%access_token'"
wp option delete 'iawgf_fs_access_token'
wp option delete 'iawgf_fs_refresh_token'
wp option delete 'iawgf_rating_asked'
wp option delete 'iawgf_task_creation_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rating_asked'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'oauth_state'
wp transient delete 'oauth_code_verifier'
wp transient delete 'update_plugins'
wp transient delete 'gops_error'
wp transient delete 'gops_notice'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'asana_token_refresh'
wp cron event delete 'fs_debug_turn_off_logging_hook'

