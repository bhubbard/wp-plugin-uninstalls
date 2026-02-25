-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('av_transcoding_enabled', 'av_soundcloud_manager_enabled', 'av_ffmpeg_path', 'av_ffprobe_path', 'soundcloud_client_id', 'dirsize_cache');
DELETE FROM wp_options WHERE option_name LIKE '%_path';
DELETE FROM wp_options WHERE option_name LIKE '%_progress';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uploaded_by', '_is_fallback', '_mp3_fallback');
DELETE FROM wp_usermeta WHERE meta_key IN ('uploaded_by', '_is_fallback', '_mp3_fallback');
DELETE FROM wp_termmeta WHERE meta_key IN ('uploaded_by', '_is_fallback', '_mp3_fallback');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uploaded_by', '_is_fallback', '_mp3_fallback');

