#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beyondwords_preselect'
wp option delete 'beyondwords_prepend_excerpt'
wp option delete 'beyondwords_project_auto_publish_enabled'
wp option delete 'beyondwords_project_id'
wp option delete 'beyondwords_player_style'
wp option delete 'beyondwords_project_language_code'
wp option delete 'beyondwords_project_body_voice_id'
wp option delete 'beyondwords_video_enabled'
wp option delete 'beyondwords_player_theme_light'
wp option delete 'beyondwords_player_theme_dark'
wp option delete 'beyondwords_date_activated'
wp option delete 'beyondwords_notice_review_dismissed'
wp option delete 'beyondwords_api_key'
wp option delete 'beyondwords_valid_api_connection'
wp option delete 'beyondwords_project_title_voice_id'
wp option delete 'beyondwords_project_title_enabled'
wp option delete 'beyondwords_project_language_id'
wp option delete 'beyondwords_project_title_voice_speaking_rate'
wp option delete 'beyondwords_project_body_voice_speaking_rate'
wp option delete 'beyondwords_player_ui'
wp option delete 'beyondwords_player_theme'
wp option delete 'beyondwords_player_theme_video'
wp option delete 'beyondwords_player_call_to_action'
wp option delete 'beyondwords_player_highlight_sections'
wp option delete 'beyondwords_player_clickable_sections'
wp option delete 'beyondwords_player_widget_style'
wp option delete 'beyondwords_player_widget_position'
wp option delete 'beyondwords_player_skip_button_style'
wp option delete 'beyondwords_version'
wp option delete 'speechkit_settings'
wp option delete 'speechkit_preselect'
wp option delete 'speechkit_api_key'
wp option delete 'speechkit_project_id'
wp option delete 'speechkit_prepend_excerpt'

# Delete Transients
wp transient delete 'beyondwords_validate_api_connection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_generate_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_generate_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_generate_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_generate_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speechkit_error_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speechkit_error_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speechkit_error_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speechkit_error_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_error_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_error_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_error_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_error_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_delete_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_delete_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_delete_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_delete_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_player_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_player_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_player_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_player_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_player_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_player_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_player_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_player_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_title_voice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_title_voice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_title_voice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_title_voice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_body_voice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_body_voice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_body_voice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_body_voice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_summary_voice_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_summary_voice_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_summary_voice_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_summary_voice_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_language_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_language_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_language_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_language_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'beyondwords_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'beyondwords_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'beyondwords_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'beyondwords_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'speechkit_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'speechkit_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'speechkit_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'speechkit_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_integration_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_integration_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_integration_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_integration_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_content_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_content_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_content_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_content_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_speechkit_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_speechkit_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_speechkit_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_speechkit_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'speechkit_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'speechkit_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'speechkit_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'speechkit_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_preview_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_preview_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_preview_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_preview_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_project_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_project_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_project_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_project_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyondwords_language_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyondwords_language_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyondwords_language_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyondwords_language_id'"
