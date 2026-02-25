#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbtv_organization_id'
wp option delete 'wpbtv_api_key'
wp option delete 'wpbtv_auto_embed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbtv_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbtv_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbtv_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbtv_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbtv_video_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbtv_video_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbtv_video_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbtv_video_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbtv_generation_requested'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbtv_generation_requested'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbtv_generation_requested'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbtv_generation_requested'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbtv_generation_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbtv_generation_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbtv_generation_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbtv_generation_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbtv_video_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbtv_video_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbtv_video_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbtv_video_source_url'"
