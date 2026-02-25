#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gutena_forms_grecaptcha'
wp option delete 'gutena_forms_messages'
wp option delete 'gutena_forms_cloudflare_turnstile'
wp option delete 'gutena_form_ids'
wp option delete 'rewrite_rules'
wp option delete 'gutena_forms_version'
wp option delete 'gutena_forms_dismiss_notices'
wp option delete 'gutena_forms_store_version'
wp option delete 'gutena_forms_weekly_report'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'gutena_forms_migration_cron_event'
wp cron event delete 'gutena_forms_weekly_report'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutena_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutena_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutena_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutena_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gutena_connected_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gutena_connected_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gutena_connected_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gutena_connected_posts'"
