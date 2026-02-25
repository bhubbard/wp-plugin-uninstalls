#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kvs_feed_last_run'
wp option delete 'kvs_feed_last_update'
wp option delete 'kvs_feed_last_insert'
wp option delete 'kvs_feed_last_delete'
wp option delete 'kvs_feed_last_id'
wp option delete 'kvs_feed_meta'
wp option delete 'kvs_feed_meta_update_time'
wp option delete 'kvs_taxonomy_category'
wp option delete 'kvs_taxonomy_tag'
wp option delete 'kvs_taxonomy_model'
wp option delete 'kvs_taxonomy_source'
wp option delete 'kvs_video_filter_by'
wp option delete 'kvs_video_filter_category'
wp option delete 'kvs_video_filter_source'
wp option delete 'kvs_video_screenshot'
wp option delete 'kvs_video_locale'
wp option delete 'kvs_update_limit'
wp option delete 'kvs_post_import_featured_image'
wp option delete 'kvs_post_type'
wp option delete 'kvs_post_date'
wp option delete 'kvs_post_body_template'
wp option delete 'kvs_post_status'
wp option delete 'kvs_log_level'
wp option delete 'kvs_feed_url'
wp option delete 'kvs_library_path'
wp option delete 'kvs_update_period'
wp option delete 'kvs_update_full'
wp option delete 'kvs_delete_period'
wp option delete 'kvs_full_period'
wp option delete 'kvs_custom1_name'
wp option delete 'kvs_custom1_value'
wp option delete 'kvs_custom2_name'
wp option delete 'kvs_custom2_value'
wp option delete 'kvs_custom3_name'
wp option delete 'kvs_custom3_value'
wp option delete 'kvs_custom4_name'
wp option delete 'kvs_custom4_value'
wp option delete 'kvs_custom5_name'
wp option delete 'kvs_custom5_value'

# Delete Transients
wp transient delete 'kvs-admin-notice'
wp transient delete 'kvs-meta-notice-success'
wp transient delete 'kvs-import-notice-empty'
wp transient delete 'kvs-import-notice-success'

# Clear Cron Jobs
wp cron event delete 'kvs_cron_update_hook'
wp cron event delete 'kvs_cron_delete_hook'
wp cron event delete 'kvs_cron_full_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kvs-video-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kvs-video-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kvs-video-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kvs-video-link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kvs-video-screenshot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kvs-video-screenshot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kvs-video-screenshot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kvs-video-screenshot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kvs-video-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kvs-video-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kvs-video-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kvs-video-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kvs-video-file-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kvs-video-file-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kvs-video-file-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kvs-video-file-url'"
