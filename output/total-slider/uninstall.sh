#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'total_slider_general_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'total_slider_grptpl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'total_slider_slides_%'"
wp option delete 'total_slider_dataformat_version'
wp option delete 'total_slider_upgrade_v1.0.x_to_v1.1'
wp option delete 'total_slider_slide_groups'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_slider_meta_legacy_bgurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_slider_meta_legacy_bgurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_slider_meta_legacy_bgurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_slider_meta_legacy_bgurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_slider_meta_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_slider_meta_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_slider_meta_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_slider_meta_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_slider_meta_title_pos_x'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_slider_meta_title_pos_x'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_slider_meta_title_pos_x'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_slider_meta_title_pos_x'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_slider_meta_title_pos_y'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_slider_meta_title_pos_y'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_slider_meta_title_pos_y'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_slider_meta_title_pos_y'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_slider_meta_sequence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_slider_meta_sequence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_slider_meta_sequence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_slider_meta_sequence'"
