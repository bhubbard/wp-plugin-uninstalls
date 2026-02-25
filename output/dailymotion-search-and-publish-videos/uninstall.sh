#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ocv_video_post_title'
wp option delete 'ocv_video_post_description'
wp option delete 'ocv_video_width'
wp option delete 'ocv_video_height'
wp option delete 'ocv_syndication_key'
wp option delete 'ocv_video_autoplay'
wp option delete 'ocv_video_post_format'
wp option delete 'ocv_video_post_status'
wp option delete 'ocv_custom_field_video_embed'
wp option delete 'youtube_related'
wp option delete 'youtube_controls'
wp option delete 'youtube_showinfo'
wp option delete 'ocv_related'
wp option delete 'ocv_controls'
wp option delete 'ocv_showinfo'
wp option delete 'youtube_size'
wp option delete 'ocv_size'
wp option delete 'vimeo_size'
wp option delete 'youtube_autoplay'
wp option delete 'vimeo_autoplay'
wp option delete 'parent_cat_id_hidden'
wp option delete 'child_cat_id_hidden'
wp option delete 'subchild_cat_id_hidden'
wp option delete 'ocv_familyfilter'
wp option delete 'youtube_public_key'
wp option delete 'vimeo_client_id'
wp option delete 'vimeo_client_secret'
wp option delete 'vimeo_parent_cat_id_hidden'
wp option delete 'vimeo_child_cat_id_hidden'
wp option delete 'vimeo_subchild_cat_id_hidden'
wp option delete 'youtube_parent_cat_id_hidden'
wp option delete 'youtube_child_cat_id_hidden'
wp option delete 'youtube_subchild_cat_id_hidden'
wp option delete 'video_source'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'time_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'time_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'time_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'time_video'"
