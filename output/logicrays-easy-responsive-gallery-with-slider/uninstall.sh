#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lergs_image_label'
wp option delete 'lergs_hover_animation'
wp option delete 'lergs_layout_type'
wp option delete 'lergs_thumbnail_layout'
wp option delete 'lergs_hover_color'
wp option delete 'lergs_hover_text_color'
wp option delete 'lergs_gallry_custom_css'
wp option delete 'lergs_slider_play'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lergs_all_photos_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lergs_all_photos_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lergs_all_photos_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lergs_all_photos_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lergs_total_images_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lergs_total_images_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lergs_total_images_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lergs_total_images_count'"
