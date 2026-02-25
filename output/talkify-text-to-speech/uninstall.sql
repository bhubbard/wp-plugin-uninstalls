-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('talkify_tts_api_key', 'talkify_tts_control_center', 'talkify_tts_keyboard_commands', 'talkify_tts_voice_commands', 'talkify_tts_default_voice', 'talkify_tts_default_rate', 'talkify_tts_text_selecor', 'talkify_tts_voice_picker', 'talkify_tts_voice_class_filter', 'talkify_tts_voice_culture_filter', 'talkify_tts_voice_language_filter', 'talkify_tts_controlcenter_location', 'talkify_tts_maximum_request_size');

