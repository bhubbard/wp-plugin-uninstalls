#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'warmer-page-timeout'
wp option delete 'warmer-server-timeout'
wp option delete 'warmer-request-delay'
wp option delete 'warmer-media-urls'
wp option delete 'warmer_show_welcome'
wp option delete 'warmer-automation-schedule'
wp option delete 'warmer-cache-update-warm'
wp option delete 'warmer-post-update-warm'
wp option delete 'warmer-webhook-enabled'
wp option delete 'warmer_webhook_secret'
wp option delete 'warmer-cli-enabled'
wp option delete 'warmer-posts-urls'
wp option delete 'warmer-pages-urls'
wp option delete 'warmer-category-urls'
wp option delete 'warmer-tag-urls'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-urls'"
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
wp cron event delete 'warmer_cache_warming_cron'
wp cron event delete 'warmer_scheduled_crawl'
wp cron event delete 'fs_debug_turn_off_logging_hook'

