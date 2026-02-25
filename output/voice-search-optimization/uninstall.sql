-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('voicseop_enable_text_search', 'voicseop_enable_voice_search', 'voicseop_voice_search_timeout', 'voicseop_enable_voice_command', 'voicseop_voice_command_timeout', 'voicseop_voice_command_position', 'voicseop_plugin_settings');

