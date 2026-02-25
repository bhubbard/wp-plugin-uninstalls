#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basiimco_webp_quality'
wp option delete 'basiimco_avif_quality'
wp option delete 'basiimco_enable_webp'
wp option delete 'basiimco_enable_avif'
wp option delete 'basiimco_plugin_version'

# Clear Cron Jobs
wp cron event delete 'basiimco_cleanup_task'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basiimco_optimized_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basiimco_optimized_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basiimco_optimized_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basiimco_optimized_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basiimco_original_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basiimco_original_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basiimco_original_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basiimco_original_size'"
