#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phort_sample_post'
wp option delete 'phort_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attachment_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attachment_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attachment_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attachment_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phort_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phort_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phort_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phort_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phort_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phort_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phort_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phort_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'phort_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'phort_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'phort_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'phort_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
