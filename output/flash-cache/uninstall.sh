#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flash_cache_advanced_settings'
wp option delete 'flash_cache_settings'
wp option delete 'flash_cache_disk_usage'
wp option delete 'flash_cache_preload_current_post'
wp option delete 'flash_cache_preload_now'
wp option delete 'flash_cache_preload_cron'
wp option delete 'flash_cache_preload'
wp option delete 'flash_cache_version'
wp option delete 'flash_cache_updated_3_2'
wp option delete 'flash_cache_updated_3_3'

# Clear Cron Jobs
wp cron event delete 'flash_cache_cron'

