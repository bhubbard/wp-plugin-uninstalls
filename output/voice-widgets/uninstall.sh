#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qc_voice_search_stt_unique_field_id'
wp option delete 'qc_voice_search_stt_lang_settings'
wp option delete 'qc_voice_search_stt_form_auto_submit'
wp option delete 'qc_voice_search_stt_style'
wp option delete 'qc_voice_search_remove_submit'
wp option delete 'qc_voice_search_stt_form_control'
wp option delete 'qc_voice_to_speech_stt_lang_code'
wp option delete 'qcld_mp3_transcribe_btn_text'
wp option delete 'qcld_mp3_final_post_text'
wp option delete 'qcld_mp3_transcribe_max_file_size'
wp option delete 'qc_voice_to_speech_stt_openai_api_key'
wp option delete 'text_to_speech_pitch'
wp option delete 'text_to_speech_rate'
wp option delete 'text_to_speech_volume'
wp option delete 'text_to_speech_voice'
wp option delete 'floating_text_to_speech_btn_text'
wp option delete 'floating_text_to_speech_btn_text_stop'
wp option delete 'text_to_speech_floating_bg_color'
wp option delete 'text_to_speech_floating_bg_hover_color'
wp option delete 'text_to_speech_background_color'
wp option delete 'text_to_speech_bg_hover_color'
wp option delete 'text_to_speech_font_color'
wp option delete 'text_to_speech_btn_text'
wp option delete 'text_to_speech_enable'
wp option delete 'text_to_speech_palyer_position'
wp option delete 'qcld_page_call_text_to_speech_show_pages'
wp option delete 'qcld_page_call_text_to_speech_show_pages_list'
wp option delete 'qcld_page_call_text_to_speech_show_blog_posts'
wp option delete 'qcld_page_call_text_to_speech_show_custom_post'
wp option delete 'qc_voice_to_speech_stt_project_id'
wp option delete 'qc_voice_to_speech_stt_bucket_name'
wp option delete 'qc_voice_to_speech_stt_private_key'
wp option delete 'qc_voice_to_speech_stt_type'
wp option delete 'qc_voice_stt_audio_lan_speak_now'
wp option delete 'qc_voice_stt_audio_lan_stop_save'
wp option delete 'qc_voice_stt_audio_lan_canvas_not_available'
wp option delete 'qc_voice_stt_audio_lan_please_wait'
wp option delete 'stt_sound_duration'
wp option delete 'qc_voice_stt_audio_lan_record_audio'
wp option delete 'qcld_mp3_transcribe_btn_icon'
wp option delete 'qc_voice_widget_lan_record_audio'
wp option delete 'qc_voice_widget_lan_speak_now'
wp option delete 'qc_voice_widget_lan_stop_save'
wp option delete 'qc_voice_widget_lan_canvas_not_available'
wp option delete 'qc_voice_widget_lan_please_wait'
wp option delete 'convert_recorded_audio'
wp option delete 'voice_cf7_enable_audio_webhooks'
wp option delete 'qc_voice_to_speech_stt_allow_voice_control'
wp option delete 'qc_voice_to_speech_stt_allow_control'
wp option delete 'qc_voice_to_speech_stt_lang_name'
wp option delete 'qc_voice_to_speech_stt_form_control'
wp option delete 'qc_voice_to_speech_stt_unique_field_id'
wp option delete 'qc_voice_to_speech_stt_pro_review'
wp option delete 'qc_voice_to_speech_stt_language_text'
wp option delete 'qcld_page_call_text_to_speech_disable_custom_post_list'
wp option delete 'text_to_speech_enable_floating_btn'
wp option delete 'text_to_speech_show_home_page'
wp option delete 'text_to_speech_show_posts'
wp option delete 'text_to_speech_show_pages'
wp option delete 'text_to_speech_show_custom_post'
wp option delete 'disallowed_keys'
wp option delete 'qcld_disallowed_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_audio_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_audio_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_audio_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_audio_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_audio_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_audio_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_audio_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_audio_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_audio_call_to_action_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_audio_call_to_action_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_audio_call_to_action_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_audio_call_to_action_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_audio_call_to_action_button_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_audio_call_to_action_button_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_audio_call_to_action_button_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_audio_call_to_action_button_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_audio_call_to_action_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_audio_call_to_action_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_audio_call_to_action_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_audio_call_to_action_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_audio_call_to_action_new_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_audio_call_to_action_new_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_audio_call_to_action_new_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_audio_call_to_action_new_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qc_audio_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qc_audio_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qc_audio_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qc_audio_color'"
