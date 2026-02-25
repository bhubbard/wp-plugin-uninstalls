-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speechable_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_speechable_audio', '_speechable_word_timings', 'piper_tts_audio', 'piper_tts_word_timings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_speechable_audio', '_speechable_word_timings', 'piper_tts_audio', 'piper_tts_word_timings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_speechable_audio', '_speechable_word_timings', 'piper_tts_audio', 'piper_tts_word_timings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_speechable_audio', '_speechable_word_timings', 'piper_tts_audio', 'piper_tts_word_timings');

