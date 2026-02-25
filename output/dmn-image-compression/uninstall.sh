#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmnic_enable_debug_log'
wp option delete 'dmnic_enable_cron'
wp option delete 'dmnic_max_width'
wp option delete 'dmnic_min_size_kb'
wp option delete 'dmnic_enable_aggressive_compression'
wp option delete 'dmnic_quality'

# Delete Transients
wp transient delete 'dmnic_image_compression_counts'

# Clear Cron Jobs
wp cron event delete 'dmnic_cron_compress_images'
wp cron event delete 'dmnic_cleanup_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmnic_image_compressed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmnic_image_compressed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmnic_image_compressed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmnic_image_compressed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
