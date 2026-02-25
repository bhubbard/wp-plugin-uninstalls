#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arvan-cloud-vod-status'
wp option delete 'arvan-cloud-vod-selected_channel_id'
wp option delete 'vod_prevent_saving_video_on_local'
wp option delete 'arvan-cloud-vod-api_key'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acv_video_data_after_upload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acv_video_data_after_upload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acv_video_data_after_upload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acv_video_data_after_upload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acv_video_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acv_video_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acv_video_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acv_video_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ar-vod-media-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ar-vod-media-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ar-vod-media-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ar-vod-media-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acv_video_data_last_fetch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acv_video_data_last_fetch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acv_video_data_last_fetch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acv_video_data_last_fetch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arvan_video_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arvan_video_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arvan_video_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arvan_video_data'"
