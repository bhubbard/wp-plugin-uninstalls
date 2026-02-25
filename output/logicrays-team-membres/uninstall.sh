#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lrtm_show_social'
wp option delete 'lrtm_grid_layout'
wp option delete 'lrtm_image_hover_animation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrtm_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrtm_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrtm_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrtm_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrtm_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrtm_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrtm_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrtm_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrtm_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrtm_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrtm_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrtm_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrtm_linkdin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrtm_linkdin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrtm_linkdin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrtm_linkdin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lrtm_member_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lrtm_member_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lrtm_member_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lrtm_member_bio'"
