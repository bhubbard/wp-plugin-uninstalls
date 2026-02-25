#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_rest_cache_timeout'
wp option delete 'wp_rest_cache_timeout_interval'
wp option delete 'wp_rest_cache_regenerate'
wp option delete 'wp_rest_cache_regenerate_interval'
wp option delete 'wp_rest_cache_regenerate_number'
wp option delete 'wp_rest_cache_memcache_used'
wp option delete 'wp_rest_cache_global_cacheable_request_headers'
wp option delete 'wp_rest_cache_admin_notices'
wp option delete 'wp_rest_cache_rest_prefix'
wp option delete 'wp_rest_cache_uncached_parameters'
wp option delete 'wp_rest_cache_cacheable_request_headers'
wp option delete 'wp_rest_cache_allowed_request_methods'
wp option delete 'wp_rest_cache_allowed_endpoints'
wp option delete 'wp_rest_cache_disallowed_endpoints'
wp option delete 'wp_rest_cache_item_allowed_endpoints'
wp option delete 'wp_rest_cache_hit_recording'
wp option delete 'wp_rest_cache_database_version'

# Clear Cron Jobs
wp cron event delete 'wp_rest_cache_regenerate_cron'
wp cron event delete 'wp_rest_cache_cleanup_deleted_caches'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_rest_cache_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_rest_cache_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_rest_cache_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_rest_cache_dismissed_notices'"
