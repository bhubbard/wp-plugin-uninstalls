-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gspaudio_my_audios_page_id', 'gspaudio_editor_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_my_meta_value_key', 'wp_audio_editor_review_action', 'wp_audio_editor_review_dismissed_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('_my_meta_value_key', 'wp_audio_editor_review_action', 'wp_audio_editor_review_dismissed_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('_my_meta_value_key', 'wp_audio_editor_review_action', 'wp_audio_editor_review_dismissed_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_my_meta_value_key', 'wp_audio_editor_review_action', 'wp_audio_editor_review_dismissed_at');

