#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbio_lite_last_media_modified'
wp option delete 'wbio_lite_total_optimized'
wp option delete 'wbio_lite_bytes_saved'
wp option delete 'wbio_lite_activated_date'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_time' OR option_name LIKE '_site_transient_%_time'"
wp transient delete 'wbio_lite_unused_images_cache'
wp transient delete 'wbio_lite_unused_images_cache_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbio_lite_backup_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbio_lite_backup_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbio_lite_backup_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbio_lite_backup_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbio_lite_backed_up'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbio_lite_backed_up'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbio_lite_backed_up'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbio_lite_backed_up'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbio_lite_optimized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbio_lite_optimized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbio_lite_optimized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbio_lite_optimized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbio_lite_original_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbio_lite_original_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbio_lite_original_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbio_lite_original_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbio_lite_optimized_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbio_lite_optimized_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbio_lite_optimized_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbio_lite_optimized_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbio_lite_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbio_lite_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbio_lite_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbio_lite_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbio_lite_quality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbio_lite_quality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbio_lite_quality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbio_lite_quality'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wbio_lite_optimized_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wbio_lite_optimized_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wbio_lite_optimized_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wbio_lite_optimized_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
