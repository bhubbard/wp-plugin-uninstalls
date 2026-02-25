#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sws_update_notice'
wp option delete 'sep_exclude'
wp option delete 'woocommerce_catalog_columns'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'ywp_smart_search_enable_synonyms_indexing'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_description'"
