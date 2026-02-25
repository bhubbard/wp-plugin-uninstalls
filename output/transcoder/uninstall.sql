-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('number_of_thumbs', 'rtt_override_thumbnail', 'rtt_client_check_status_button', 'rt-transcoding-api-key', 'rt-transcoding-api-key-stored', 'rt-transcoding-usage', 'rtmedia-encoding-api-key', 'transcoder_admin_notice', 'rt-transcoding-usage-limit-mail', 'rtt_usage_update_flag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rt_transcoding_job_id', '_rt_media_transcoded_files', '_rt_retranscoding_sent', '_rt_media_thumbnails', '_rt_media_video_thumbnail', 'amp_is_poster', 'rtmedia_media_thumbnails', '_godam_notice_dismissed', '_rt_media_source', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rt_transcoding_job_id', '_rt_media_transcoded_files', '_rt_retranscoding_sent', '_rt_media_thumbnails', '_rt_media_video_thumbnail', 'amp_is_poster', 'rtmedia_media_thumbnails', '_godam_notice_dismissed', '_rt_media_source', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rt_transcoding_job_id', '_rt_media_transcoded_files', '_rt_retranscoding_sent', '_rt_media_thumbnails', '_rt_media_video_thumbnail', 'amp_is_poster', 'rtmedia_media_thumbnails', '_godam_notice_dismissed', '_rt_media_source', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rt_transcoding_job_id', '_rt_media_transcoded_files', '_rt_retranscoding_sent', '_rt_media_thumbnails', '_rt_media_video_thumbnail', 'amp_is_poster', 'rtmedia_media_thumbnails', '_godam_notice_dismissed', '_rt_media_source', '_wp_attached_file');

