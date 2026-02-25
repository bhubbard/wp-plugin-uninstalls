#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpvivid_optimization_options'
wp option delete 'wpvivid_connect_key'
wp option delete 'wpvivid_server_cache'
wp option delete 'wpvivid_get_optimization_url'
wp option delete 'wpvivid_dashboard_info'
wp option delete 'wpvivid_imgoptim_user'
wp option delete 'wpvivid_image_opt_task'
wp option delete 'wpvivid_get_get_overview'
wp option delete 'wpvivid_imgoptim_overview'
wp option delete 'wpvivid_image_opt_task_cancel'
wp option delete 'wpvivid_get_need_optimize_images'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'medium_large_size_w'
wp option delete 'medium_large_size_h'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpvivid_image_optimize_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpvivid_image_optimize_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpvivid_image_optimize_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpvivid_image_optimize_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpvivid_backup_image_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpvivid_backup_image_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpvivid_backup_image_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpvivid_backup_image_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpvivid_image_og_pixel_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpvivid_image_og_pixel_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpvivid_image_og_pixel_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpvivid_image_og_pixel_meta'"
