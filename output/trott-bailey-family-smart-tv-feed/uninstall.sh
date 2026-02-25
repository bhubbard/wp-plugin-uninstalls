#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tbf_rvf_settings'
wp option delete 'tbf_rvf_selected_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tbf_rvf_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tbf_rvf_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tbf_rvf_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tbf_rvf_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tbf_rvf_thumbnail_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tbf_rvf_thumbnail_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tbf_rvf_thumbnail_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tbf_rvf_thumbnail_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tbf_rvf_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tbf_rvf_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tbf_rvf_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tbf_rvf_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tbf_rvf_video_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tbf_rvf_video_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tbf_rvf_video_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tbf_rvf_video_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbf_rvf_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbf_rvf_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbf_rvf_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbf_rvf_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbf_rvf_poster_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbf_rvf_poster_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbf_rvf_poster_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbf_rvf_poster_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbf_rvf_poster_image_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbf_rvf_poster_image_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbf_rvf_poster_image_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbf_rvf_poster_image_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbf_rvf_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbf_rvf_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbf_rvf_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbf_rvf_duration'"
