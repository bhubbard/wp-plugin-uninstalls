#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'compressx_general_settings'
wp option delete 'compressx_dissmiss_conflict_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'medium_large_size_w'
wp option delete 'medium_large_size_h'
wp option delete 'compressx_quality'
wp option delete 'compressx_converter_method'
wp option delete 'compressx_output_format_webp'
wp option delete 'compressx_output_format_avif'
wp option delete 'compressx_auto_optimize'
wp option delete 'compressx_custom_includes'
wp option delete 'compressx_custom_image_opt_task'
wp option delete 'compressx_need_optimized_custom_images'
wp option delete 'compressx_image_opt_task'
wp option delete 'compressx_global_stats'
wp option delete 'compressx_media_excludes'
wp option delete 'compressx_hide_notice'
wp option delete 'compressx_need_optimized_images'
wp option delete 'compressx_rating_dismiss'
wp option delete 'compressx_show_review'
wp option delete 'compressx_hide_big_update'
wp option delete 'compressx_media_replace'

# Delete Transients
wp transient delete 'compressx_set_global_stats'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'compressx_purge_cache_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_sellvia_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_sellvia_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_sellvia_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_sellvia_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compressx_image_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compressx_image_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compressx_image_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compressx_image_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compressx_image_meta_webp_converted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compressx_image_meta_webp_converted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compressx_image_meta_webp_converted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compressx_image_meta_webp_converted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compressx_image_meta_avif_converted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compressx_image_meta_avif_converted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compressx_image_meta_avif_converted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compressx_image_meta_avif_converted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compressx_image_meta_compressed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compressx_image_meta_compressed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compressx_image_meta_compressed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compressx_image_meta_compressed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compressx_image_meta_og_file_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compressx_image_meta_og_file_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compressx_image_meta_og_file_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compressx_image_meta_og_file_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compressx_image_meta_webp_converted_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compressx_image_meta_webp_converted_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compressx_image_meta_webp_converted_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compressx_image_meta_webp_converted_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compressx_image_meta_avif_converted_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compressx_image_meta_avif_converted_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compressx_image_meta_avif_converted_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compressx_image_meta_avif_converted_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compressx_image_meta_compressed_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compressx_image_meta_compressed_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compressx_image_meta_compressed_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compressx_image_meta_compressed_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compressx_image_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compressx_image_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compressx_image_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compressx_image_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'compressx_image_progressing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'compressx_image_progressing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'compressx_image_progressing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'compressx_image_progressing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
