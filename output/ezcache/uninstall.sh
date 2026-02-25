#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ezcache_first_run'
wp option delete 'ezcache_convert_images_to_webp_reprocess_queue'
wp option delete 'ezcache_version'

# Delete Transients
wp transient delete 'ezcache_activating'
wp transient delete 'ezcache_deactivating'
wp transient delete 'ezcache_repaired'
wp transient delete 'ezcache_https_2_support'

# Clear Cron Jobs
wp cron event delete 'ezcache_clear_expired_cache'
wp cron event delete 'ezcache_convert_images_to_webp_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ezcache_do_not_cache_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ezcache_do_not_cache_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ezcache_do_not_cache_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ezcache_do_not_cache_post'"
