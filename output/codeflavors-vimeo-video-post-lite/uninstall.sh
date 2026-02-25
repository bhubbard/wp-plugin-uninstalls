#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'vimeotheque_setup_activated'
wp transient delete 'vimeotheque_updated_slugs'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__vimeo_image_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__vimeo_image_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__vimeo_image_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__vimeo_image_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'video_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'video_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'video_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'video_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'playback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'playback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'playback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'playback'"
