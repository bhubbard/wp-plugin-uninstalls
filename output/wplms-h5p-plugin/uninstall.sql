-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lms_settings', 'h5p_track_user', 'h5p_save_content_state', 'h5p_save_content_frequency', 'h5p_export');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vibe_quiz_course', 'vibe_quiz_message', 'wplms_h5p_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('vibe_quiz_course', 'vibe_quiz_message', 'wplms_h5p_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('vibe_quiz_course', 'vibe_quiz_message', 'wplms_h5p_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vibe_quiz_course', 'vibe_quiz_message', 'wplms_h5p_content');

