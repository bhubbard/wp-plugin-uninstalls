#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gvtryon_plugin_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gvtryon_frame_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gvtryon_frame_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gvtryon_frame_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gvtryon_frame_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gvtryon_frame_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gvtryon_frame_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gvtryon_frame_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gvtryon_frame_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gvtryon_standard_face_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gvtryon_standard_face_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gvtryon_standard_face_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gvtryon_standard_face_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gvtryon_diffY'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gvtryon_diffY'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gvtryon_diffY'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gvtryon_diffY'"
