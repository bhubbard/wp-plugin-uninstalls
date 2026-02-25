-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moodmoderator_api_key', 'moodmoderator_strictness', 'moodmoderator_custom_tones', 'moodmoderator_enable_logging', 'moodmoderator_cache_duration', 'moodmoderator_predefined_tones', 'moodmoderator_version', 'moodmoderator_api_calls_count', 'moodmoderator_no_api_key_warning', 'moodmoderator_dashboard_widget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('moodmoderator_tone', 'moodmoderator_content_hash', 'moodmoderator_analyzed_at', 'moodmoderator_confidence', 'moodmoderator_ai_reasoning');
DELETE FROM wp_usermeta WHERE meta_key IN ('moodmoderator_tone', 'moodmoderator_content_hash', 'moodmoderator_analyzed_at', 'moodmoderator_confidence', 'moodmoderator_ai_reasoning');
DELETE FROM wp_termmeta WHERE meta_key IN ('moodmoderator_tone', 'moodmoderator_content_hash', 'moodmoderator_analyzed_at', 'moodmoderator_confidence', 'moodmoderator_ai_reasoning');
DELETE FROM wp_commentmeta WHERE meta_key IN ('moodmoderator_tone', 'moodmoderator_content_hash', 'moodmoderator_analyzed_at', 'moodmoderator_confidence', 'moodmoderator_ai_reasoning');

