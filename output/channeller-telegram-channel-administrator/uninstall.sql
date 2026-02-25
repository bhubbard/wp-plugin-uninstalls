-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tchannel_settings', 'wp_channeller_log');
DELETE FROM wp_options WHERE option_name LIKE '@%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tchannel_text', 'tchannel_image', 'tchannel_video', 'tchannel_video_time', 'tchannel_audio', 'tchannel_audio_time', 'tchannel_audio_performer', 'tchannel_audio_title', 'tchannel_web', 'tchannel_select', 'tchannel_link', 'tchannel_media', 'tchannel_glass');
DELETE FROM wp_usermeta WHERE meta_key IN ('tchannel_text', 'tchannel_image', 'tchannel_video', 'tchannel_video_time', 'tchannel_audio', 'tchannel_audio_time', 'tchannel_audio_performer', 'tchannel_audio_title', 'tchannel_web', 'tchannel_select', 'tchannel_link', 'tchannel_media', 'tchannel_glass');
DELETE FROM wp_termmeta WHERE meta_key IN ('tchannel_text', 'tchannel_image', 'tchannel_video', 'tchannel_video_time', 'tchannel_audio', 'tchannel_audio_time', 'tchannel_audio_performer', 'tchannel_audio_title', 'tchannel_web', 'tchannel_select', 'tchannel_link', 'tchannel_media', 'tchannel_glass');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tchannel_text', 'tchannel_image', 'tchannel_video', 'tchannel_video_time', 'tchannel_audio', 'tchannel_audio_time', 'tchannel_audio_performer', 'tchannel_audio_title', 'tchannel_web', 'tchannel_select', 'tchannel_link', 'tchannel_media', 'tchannel_glass');

