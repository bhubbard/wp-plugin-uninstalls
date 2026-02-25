-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daextrevo_options_version', 'daextrevo_post_meta_version', 'daextrevo_database_version', 'daextrevo_editor_tools_capability', 'daextrevo_google_cloud_text_to_speech_api_key', 'daextrevo_azure_region', 'daextrevo_azure_user_agent', 'daextrevo_azure_x_microsoft_output_format', 'daextrevo_azure_voice_short_name', 'daextrevo_azure_speech_resource_key', 'daextrevo_dismissible_notice_a');
DELETE FROM wp_options WHERE option_name LIKE '%_editor_tools_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_pagination_items';
DELETE FROM wp_options WHERE option_name LIKE '%_text_to_speech_converter';
DELETE FROM wp_options WHERE option_name LIKE '%_api_log_menu_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_maintenance_menu_capability';
DELETE FROM wp_options WHERE option_name LIKE '%_post_types_ui';
DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_audio_encoding';
DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_speaking_rate';
DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_pitch';
DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_volume_gain_db';
DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_sample_rate_hertz';
DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_effects_profile_id';
DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_voice_language_code';
DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_voice_name';
DELETE FROM wp_options WHERE option_name LIKE '%_speech_text_before';
DELETE FROM wp_options WHERE option_name LIKE '%_speech_text_after';
DELETE FROM wp_options WHERE option_name LIKE '%_read_title';
DELETE FROM wp_options WHERE option_name LIKE '%_primary_chunk_separator';
DELETE FROM wp_options WHERE option_name LIKE '%_secondary_chunk_separator';
DELETE FROM wp_options WHERE option_name LIKE '%_tertiary_chunk_separator';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_background_color';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_border_color';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_icons_color';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_slider_track_color';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_slider_thumb_color';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_text_color';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_font_family';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_font_size';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_font_style';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_font_weight';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_line_height';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_drop_shadow';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_drop_shadow_color';
DELETE FROM wp_options WHERE option_name LIKE '%_responsive_breakpoint';
DELETE FROM wp_options WHERE option_name LIKE '%_responsive_breakpoint_2';
DELETE FROM wp_options WHERE option_name LIKE '%_google_font_url';
DELETE FROM wp_options WHERE option_name LIKE '%_development_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_speech_synthesis_lang';
DELETE FROM wp_options WHERE option_name LIKE '%_speech_synthesis_pitch';
DELETE FROM wp_options WHERE option_name LIKE '%_speech_synthesis_rate';
DELETE FROM wp_options WHERE option_name LIKE '%_speech_synthesis_volume';
DELETE FROM wp_options WHERE option_name LIKE '%_post_types';
DELETE FROM wp_options WHERE option_name LIKE '%_text_before';
DELETE FROM wp_options WHERE option_name LIKE '%_text_after';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_daextrevo_audio_file_url', '_daextrevo_audio_file_creation_date', '_daextrevo_text_to_speech', '_daextrevo_document_type', '_daextrevo_audio_file_path', '_daextrevo_content_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_daextrevo_audio_file_url', '_daextrevo_audio_file_creation_date', '_daextrevo_text_to_speech', '_daextrevo_document_type', '_daextrevo_audio_file_path', '_daextrevo_content_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_daextrevo_audio_file_url', '_daextrevo_audio_file_creation_date', '_daextrevo_text_to_speech', '_daextrevo_document_type', '_daextrevo_audio_file_path', '_daextrevo_content_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_daextrevo_audio_file_url', '_daextrevo_audio_file_creation_date', '_daextrevo_text_to_speech', '_daextrevo_document_type', '_daextrevo_audio_file_path', '_daextrevo_content_hash');

