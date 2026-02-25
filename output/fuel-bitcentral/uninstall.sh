#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fuel_player_autoplay_control'
wp option delete 'fuel_player_preroll_control'
wp option delete 'fuel_player_vast_url'
wp option delete 'fuel_player_title_position_option'
wp option delete 'fuel_tiles_heading_option'
wp option delete 'fuel_tiles_category_option'
wp option delete 'fuel_tiles_script_category_option'
wp option delete 'fuel_player_tag_option'
wp option delete 'fuel_player_floating_option'
wp option delete 'fuel_player_floating_position'
wp option delete 'fuel_player_floating_width'
wp option delete 'fuel_player_floating_height'
wp option delete 'fuel_player_share_option'
wp option delete 'fuel_player_embed_option'
wp option delete 'fuel_player_add_method'
wp option delete 'fuel_player_social_option'
wp option delete 'fuel_player_enable_facebook'
wp option delete 'fuel_player_enable_twitter'
wp option delete 'fuel_player_enable_linkedIn'
wp option delete 'fuel_player_enable_email'
wp option delete 'fuel_player_gtm_id'
wp option delete 'fuel_player_description_option'
wp option delete 'fuel_player_enable_facebook_app_id'
wp option delete 'fuel_player_enable_facebook_app_secret'
wp option delete 'fuel_player_audio_control'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fuel_mrss_cron_recurrence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fuel_mrss_cron_recurrence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fuel_mrss_cron_recurrence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fuel_mrss_cron_recurrence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fuel_publish_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fuel_publish_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fuel_publish_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fuel_publish_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fuel_mrss_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fuel_mrss_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fuel_mrss_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fuel_mrss_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_for_player_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_for_player_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_for_player_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_for_player_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_for_tiles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_for_tiles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_for_tiles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_for_tiles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'channel_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'channel_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'channel_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'channel_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'swc_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'swc_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'swc_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'swc_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fuel_mrss_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fuel_mrss_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fuel_mrss_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fuel_mrss_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fuel_clip_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fuel_clip_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fuel_clip_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fuel_clip_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fuel_mrss_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fuel_mrss_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fuel_mrss_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fuel_mrss_id'"
