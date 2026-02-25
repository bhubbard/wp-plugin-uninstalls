#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trt_pvc_custom_css'
wp option delete 'trt_pvc_track_ip'
wp option delete 'trt_pvc_archive_columns'
wp option delete 'trt_pvc_posts_per_page'
wp option delete 'trt_pvc_show_column'
wp option delete 'trt_pvc_custom_post_type'
wp option delete 'trt_pvc_sort_by_views'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trt_pvc_tracked_ips'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trt_pvc_tracked_ips'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trt_pvc_tracked_ips'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trt_pvc_tracked_ips'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trt_pvc_post_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trt_pvc_post_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trt_pvc_post_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trt_pvc_post_views'"
