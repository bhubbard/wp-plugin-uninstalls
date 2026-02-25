#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yt_to_posts_query'
wp option delete 'yt_to_posts_query_type'
wp option delete 'yt_to_posts_number'
wp option delete 'yt_to_posts_cat'
wp option delete 'yt_to_posts_use_video_date'
wp option delete 'yt_to_posts_post_type'
wp option delete 'yt_to_posts_post_status'
wp option delete 'yt_to_posts_author'
wp option delete 'yt_to_posts_ck'
wp option delete 'yt_to_posts_title_format'
wp option delete 'yt_to_posts_content_format'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'media_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'media_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'media_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'media_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yt_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yt_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yt_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yt_id'"
