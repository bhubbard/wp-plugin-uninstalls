-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kind_termslist', 'kind_default', 'kind_embeds', 'kind_firehose', 'kind_bottom', 'kind_display', 'kind_kses', 'kind_title', 'kind_protection', 'iw_single_author', 'iw_default_author', 'kind_post_widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mf2_author', '_source_url', '_content_img_ids', '_content_video_ids', '_content_audio_ids', 'mf2_publication', 'mf2_duration', '_wp_attached_file', 'mf2_photo', 'mf2_audio', 'mf2_video', 'mf2_cite', 'response', 'mf2_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('mf2_author', '_source_url', '_content_img_ids', '_content_video_ids', '_content_audio_ids', 'mf2_publication', 'mf2_duration', '_wp_attached_file', 'mf2_photo', 'mf2_audio', 'mf2_video', 'mf2_cite', 'response', 'mf2_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('mf2_author', '_source_url', '_content_img_ids', '_content_video_ids', '_content_audio_ids', 'mf2_publication', 'mf2_duration', '_wp_attached_file', 'mf2_photo', 'mf2_audio', 'mf2_video', 'mf2_cite', 'response', 'mf2_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mf2_author', '_source_url', '_content_img_ids', '_content_video_ids', '_content_audio_ids', 'mf2_publication', 'mf2_duration', '_wp_attached_file', 'mf2_photo', 'mf2_audio', 'mf2_video', 'mf2_cite', 'response', 'mf2_url');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mf2_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mf2_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mf2_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mf2_%';

