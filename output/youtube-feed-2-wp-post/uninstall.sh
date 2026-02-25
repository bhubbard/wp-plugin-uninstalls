#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yt2wp_youtube_api_key'
wp option delete 'yt2wp_auto_import'
wp option delete 'yt2wp_cron_job_schedule'
wp option delete 'yt2wp_youtube_user_id'
wp option delete 'yt2wp_post_category'
wp option delete 'yt2wp_import_attempt'
wp option delete 'yt2wp_youtube_next_page_token'

# Clear Cron Jobs
wp cron event delete 'yt2wp_youtube_video_import'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yt2wp_youtube_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yt2wp_youtube_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yt2wp_youtube_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yt2wp_youtube_video_id'"
