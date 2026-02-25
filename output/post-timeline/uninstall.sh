#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agile_timeline_global_settings'
wp option delete 'post_timeline_global_settings'

# Delete Transients
wp transient delete 'agile-timeline-err'
wp transient delete 'post-timeline-err'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agile-timeline-post-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agile-timeline-post-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agile-timeline-post-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agile-timeline-post-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl-fav-icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl-fav-icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl-fav-icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl-fav-icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl-post-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl-post-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl-post-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl-post-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl-post-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl-post-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl-post-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl-post-link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl-video-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl-video-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl-video-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl-video-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl-post-order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl-post-order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl-post-order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl-post-order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl-post-color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl-post-color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl-post-color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl-post-color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl-icon-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl-icon-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl-icon-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl-icon-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl-media-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl-media-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl-media-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl-media-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl-custom-icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl-custom-icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl-custom-icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl-custom-icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ptl-like'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ptl-like'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ptl-like'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ptl-like'"
