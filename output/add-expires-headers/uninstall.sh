#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aeh_image_optimization_settings'
wp option delete 'aeh_expires_headers_settings'
wp option delete 'aeh_lazy_loading_settings'
wp option delete 'aeh_expires_headers_minify_settings'
wp option delete 'aeh_expires_headers_last_modified_time'
wp option delete 'review_request_time'
wp option delete 'aeh_scanned_urls'
wp option delete 'aeh_extracted_urls'
wp option delete 'aeh_expires_headers_external_cache_settings'
wp option delete 'aeh_expires_headers_advance_settings'
wp option delete 'aeh-last-cache-update'
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
wp cron event delete 'fs_debug_turn_off_logging_hook'

