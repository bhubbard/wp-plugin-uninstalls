#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_editor_tools_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pagination_items'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_to_speech_converter'"
wp option delete 'daextrevo_options_version'
wp option delete 'daextrevo_post_meta_version'
wp option delete 'daextrevo_database_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_log_menu_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_maintenance_menu_capability'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_post_types_ui'"
wp option delete 'daextrevo_editor_tools_capability'
wp option delete 'daextrevo_google_cloud_text_to_speech_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_audio_encoding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_speaking_rate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_pitch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_volume_gain_db'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_sample_rate_hertz'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_audio_config_effects_profile_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_voice_language_code'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_cloud_voice_name'"
wp option delete 'daextrevo_azure_region'
wp option delete 'daextrevo_azure_user_agent'
wp option delete 'daextrevo_azure_x_microsoft_output_format'
wp option delete 'daextrevo_azure_voice_short_name'
wp option delete 'daextrevo_azure_speech_resource_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_speech_text_before'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_speech_text_after'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_read_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_primary_chunk_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secondary_chunk_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tertiary_chunk_separator'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_background_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_border_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_icons_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_slider_track_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_slider_thumb_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_text_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_font_family'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_font_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_font_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_font_weight'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_line_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_drop_shadow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_player_drop_shadow_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_responsive_breakpoint'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_responsive_breakpoint_2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_google_font_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_development_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_speech_synthesis_lang'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_speech_synthesis_pitch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_speech_synthesis_rate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_speech_synthesis_volume'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_before'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_text_after'"
wp option delete 'daextrevo_dismissible_notice_a'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_daextrevo_audio_file_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_daextrevo_audio_file_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_daextrevo_audio_file_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_daextrevo_audio_file_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_daextrevo_audio_file_creation_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_daextrevo_audio_file_creation_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_daextrevo_audio_file_creation_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_daextrevo_audio_file_creation_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_daextrevo_text_to_speech'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_daextrevo_text_to_speech'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_daextrevo_text_to_speech'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_daextrevo_text_to_speech'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_daextrevo_document_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_daextrevo_document_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_daextrevo_document_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_daextrevo_document_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_daextrevo_audio_file_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_daextrevo_audio_file_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_daextrevo_audio_file_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_daextrevo_audio_file_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_daextrevo_content_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_daextrevo_content_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_daextrevo_content_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_daextrevo_content_hash'"
