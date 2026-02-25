#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swipecomic_default_zoom'
wp option delete 'swipecomic_default_pan'
wp option delete 'swipecomic_episodes_per_page'
wp option delete 'swipecomic_show_lightbox_tools'
wp option delete 'swipecomic_thumbnail_size'
wp option delete 'swipecomic_media_optimization'
wp option delete 'swipecomic_delete_on_remove'
wp option delete 'swipecomic_use_url_prefix'
wp option delete 'swipecomic_url_prefix'
wp option delete 'swipecomic_version'

# Delete Transients
wp transient delete 'swipecomic_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swipecomic_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swipecomic_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swipecomic_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swipecomic_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swipecomic_episode_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swipecomic_episode_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swipecomic_episode_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swipecomic_episode_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swipecomic_default_zoom_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swipecomic_default_zoom_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swipecomic_default_zoom_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swipecomic_default_zoom_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swipecomic_default_zoom_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swipecomic_default_zoom_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swipecomic_default_zoom_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swipecomic_default_zoom_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swipecomic_default_pan_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swipecomic_default_pan_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swipecomic_default_pan_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swipecomic_default_pan_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swipecomic_default_pan_x'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swipecomic_default_pan_x'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swipecomic_default_pan_x'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swipecomic_default_pan_x'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swipecomic_default_pan_y'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swipecomic_default_pan_y'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swipecomic_default_pan_y'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swipecomic_default_pan_y'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'series_cover_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'series_cover_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'series_cover_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'series_cover_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'series_logo_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'series_logo_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'series_logo_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'series_logo_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'series_logo_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'series_logo_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'series_logo_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'series_logo_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swipecomic_chapter_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swipecomic_chapter_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swipecomic_chapter_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swipecomic_chapter_number'"
