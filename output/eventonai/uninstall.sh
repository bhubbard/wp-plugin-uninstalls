#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'momo_rssfeed_openai_settings'
wp option delete 'momo_autoblog_openai_settings'
wp option delete 'momo_acg_eo_openai_settings'
wp option delete 'momo_acg_rssfeed_event_list'
wp option delete 'momo_acg_chatbot_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'momo_wsw_api_cache_settings'
wp option delete 'momo_acg_eo_searchlog_settings'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Clear Cron Jobs
wp cron event delete 'momo_store_email_template_event'
wp cron event delete 'momo_delete_old_search_logs_cron'

