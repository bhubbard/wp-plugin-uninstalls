#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'face_detection_upload_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'face_detection_faces'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'face_detection_faces'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'face_detection_faces'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'face_detection_faces'"
