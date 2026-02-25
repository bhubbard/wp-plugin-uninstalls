#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lryg_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_quality_meta_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_quality_meta_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_quality_meta_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_quality_meta_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'radio_similiar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'radio_similiar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'radio_similiar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'radio_similiar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'radio_controles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'radio_controles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'radio_controles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'radio_controles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'radio_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'radio_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'radio_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'radio_title'"
