#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smet0_activation_redirect'
wp option delete 'rewrite_rules'
wp option delete 'smet0_podcast_title'
wp option delete 'smet0_podcast_desc'
wp option delete 'smet0_podcast_email'
wp option delete 'smet0_podcast_posts_per_page'
wp option delete 'smet0_podcast_image'
wp option delete 'smet0_podcast_category'
wp option delete 'smet0_podcast_subcategory'
wp option delete 'smet0_podcast_explicit'
wp option delete 'smet0_podcast_owner'
wp option delete 'smet0_podcast_bible_passage_prefix'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sermon_media_bible_passage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sermon_media_bible_passage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sermon_media_bible_passage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sermon_media_bible_passage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sermon_media_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sermon_media_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sermon_media_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sermon_media_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sermon_media_mp3_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sermon_media_mp3_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sermon_media_mp3_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sermon_media_mp3_url'"
