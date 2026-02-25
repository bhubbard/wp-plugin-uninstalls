#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'l7_admin_help_video_options'
wp option delete 'l7whv_help_video_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'help_video_post_youtube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'help_video_post_youtube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'help_video_post_youtube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'help_video_post_youtube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'help_video_post_vimeo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'help_video_post_vimeo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'help_video_post_vimeo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'help_video_post_vimeo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'help_video_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'help_video_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'help_video_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'help_video_post'"
