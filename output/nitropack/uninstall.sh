#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nitropack-minimumLogLevel'
wp option delete 'gd_system_last_cache_flush'
wp option delete 'nitropack-autoCachePurge'
wp option delete 'nitropack-cacheableObjectTypes'
wp option delete 'nitropack-bbCacheSyncPurge'
wp option delete 'woo_multi_currency_params'
wp option delete 'dlm_dp_downloading_page'
wp option delete 'dlm_download_endpoint'
wp option delete 'geot_settings'
wp option delete 'nitropack-onboardingPassed'
wp option delete 'nitropack-canEditorClearCache'
wp option delete 'nitropack-distribution'
wp option delete 'nitropack-enableCompression'
wp option delete 'nitropack-webhookToken'
wp option delete 'nitropack-dismissed-notices'
wp option delete 'nitropack-nonCacheableObjectTypes'
wp option delete 'nitropack-warmup-sitemap'
wp option delete 'nitropack-activation-redirect'

# Delete Transients
wp transient delete 'nitropack_sale_product_dates'

# Clear Cron Jobs
wp cron event delete 'nitropack_remove_old_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_expiration-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_expiration-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_expiration-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_expiration-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_date'"
