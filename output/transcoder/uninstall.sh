#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'number_of_thumbs'
wp option delete 'rtt_override_thumbnail'
wp option delete 'rtt_client_check_status_button'
wp option delete 'rt-transcoding-api-key'
wp option delete 'rt-transcoding-api-key-stored'
wp option delete 'rt-transcoding-usage'
wp option delete 'rtmedia-encoding-api-key'
wp option delete 'transcoder_admin_notice'
wp option delete 'rt-transcoding-usage-limit-mail'

# Delete Transients
wp transient delete 'rtt_usage_update_flag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rt_transcoding_job_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rt_transcoding_job_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rt_transcoding_job_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rt_transcoding_job_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rt_media_transcoded_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rt_media_transcoded_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rt_media_transcoded_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rt_media_transcoded_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rt_retranscoding_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rt_retranscoding_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rt_retranscoding_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rt_retranscoding_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rt_media_thumbnails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rt_media_thumbnails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rt_media_thumbnails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rt_media_thumbnails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rt_media_video_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rt_media_video_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rt_media_video_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rt_media_video_thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amp_is_poster'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amp_is_poster'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amp_is_poster'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amp_is_poster'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtmedia_media_thumbnails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtmedia_media_thumbnails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtmedia_media_thumbnails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtmedia_media_thumbnails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_godam_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_godam_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_godam_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_godam_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rt_media_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rt_media_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rt_media_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rt_media_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
