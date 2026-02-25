#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'talkino_receive_weekly_report'
wp option delete 'talkino_report_storage_duration'
wp option delete 'talkino_chatbox_activation'
wp option delete 'talkino_global_online_status'
wp option delete 'talkino_global_schedule_online_status'
wp option delete 'talkino_chatbox_online_subtitle'
wp option delete 'talkino_chatbox_away_subtitle'
wp option delete 'talkino_chatbox_offline_subtitle'
wp option delete 'talkino_offline_message'
wp option delete 'talkino_chatbox_button_text'
wp option delete 'talkino_chatbox_layout'
wp option delete 'talkino_chatbox_style'
wp option delete 'talkino_chatbox_position'
wp option delete 'talkino_chatbox_icon'
wp option delete 'talkino_chatbox_animation'
wp option delete 'talkino_start_chat_method'
wp option delete 'talkino_chatbox_z_index'
wp option delete 'talkino_chatbox_online_theme_color'
wp option delete 'talkino_chatbox_online_icon_color'
wp option delete 'talkino_chatbox_away_theme_color'
wp option delete 'talkino_chatbox_away_icon_color'
wp option delete 'talkino_chatbox_offline_theme_color'
wp option delete 'talkino_chatbox_offline_icon_color'
wp option delete 'talkino_chatbox_background_color'
wp option delete 'talkino_chatbox_title_color'
wp option delete 'talkino_chatbox_subtitle_color'
wp option delete 'talkino_chatbox_button_color'
wp option delete 'talkino_chatbox_button_text_color'
wp option delete 'talkino_bubble_background_color'
wp option delete 'talkino_contact_form_notice_text_color'
wp option delete 'talkino_google_recaptcha_notice_text_color'
wp option delete 'talkino_google_recaptcha_link_text_color'
wp option delete 'talkino_credit_text_color'
wp option delete 'talkino_agent_field_background_color'
wp option delete 'talkino_agent_field_hover_background_color'
wp option delete 'talkino_agent_name_text_color'
wp option delete 'talkino_agent_job_title_text_color'
wp option delete 'talkino_agent_channel_text_color'
wp option delete 'talkino_chatbox_exclude_pages'
wp option delete 'talkino_show_on_post'
wp option delete 'talkino_show_on_search'
wp option delete 'talkino_show_on_404'
wp option delete 'talkino_show_on_woocommerce_pages'
wp option delete 'talkino_show_on_desktop'
wp option delete 'talkino_show_on_mobile'
wp option delete 'talkino_user_visibility'
wp option delete 'talkino_show_offline_agents'
wp option delete 'talkino_activate_country_block'
wp option delete 'talkino_country_restriction'
wp option delete 'talkino_typebot_status'
wp option delete 'talkino_typebot_link'
wp option delete 'talkino_ga_status'
wp option delete 'talkino_ga_measurement'
wp option delete 'talkino_ga_api'
wp option delete 'talkino_contact_form_status'
wp option delete 'talkino_email_recipient'
wp option delete 'talkino_email_subject'
wp option delete 'talkino_sender_message'
wp option delete 'talkino_sender_name'
wp option delete 'talkino_sender_email'
wp option delete 'talkino_sender_phone'
wp option delete 'talkino_success_email_message'
wp option delete 'talkino_fail_email_message'
wp option delete 'talkino_recaptcha_status'
wp option delete 'talkino_recaptcha_site_key'
wp option delete 'talkino_recaptcha_secret_key'
wp option delete 'talkino_reset_settings_status'
wp option delete 'talkino_data_uninstall_status'
wp option delete 'talkino_credit'
wp option delete 'talkino_channel_ordering'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'talkino_activation_time'
wp option delete 'talkino_dismiss_plugin_review_notice'
wp option delete 'talkino_version'
wp option delete 'talkino_chatbox_height'
wp option delete 'talkino_load_font_awesome_deferred'
wp option delete 'talkino_agent_not_available_message'
wp option delete 'talkino_contact_ordering'

# Clear Cron Jobs
wp cron event delete 'talkino_cron_reporting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_ordering'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_ordering'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_ordering'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_ordering'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_job_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_job_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_job_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_job_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_welcome_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_welcome_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_welcome_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_welcome_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_whatsapp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_whatsapp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_whatsapp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_whatsapp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_whatsapp_pre_filled_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_whatsapp_pre_filled_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_whatsapp_pre_filled_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_whatsapp_pre_filled_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_facebook_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_facebook_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_facebook_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_facebook_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_telegram_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_telegram_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_telegram_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_telegram_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_phone_show_only_on_mobile_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_phone_show_only_on_mobile_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_phone_show_only_on_mobile_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_phone_show_only_on_mobile_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_activate_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_activate_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_activate_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_activate_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_monday_online_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_monday_online_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_monday_online_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_monday_online_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_monday_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_monday_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_monday_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_monday_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_monday_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_monday_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_monday_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_monday_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_tuesday_online_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_tuesday_online_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_tuesday_online_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_tuesday_online_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_tuesday_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_tuesday_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_tuesday_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_tuesday_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_tuesday_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_tuesday_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_tuesday_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_tuesday_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_wednesday_online_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_wednesday_online_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_wednesday_online_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_wednesday_online_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_wednesday_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_wednesday_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_wednesday_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_wednesday_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_wednesday_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_wednesday_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_wednesday_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_wednesday_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_thursday_online_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_thursday_online_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_thursday_online_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_thursday_online_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_thursday_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_thursday_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_thursday_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_thursday_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_thursday_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_thursday_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_thursday_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_thursday_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_friday_online_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_friday_online_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_friday_online_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_friday_online_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_friday_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_friday_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_friday_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_friday_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_friday_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_friday_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_friday_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_friday_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_saturday_online_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_saturday_online_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_saturday_online_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_saturday_online_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_saturday_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_saturday_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_saturday_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_saturday_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_saturday_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_saturday_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_saturday_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_saturday_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_sunday_online_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_sunday_online_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_sunday_online_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_sunday_online_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_sunday_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_sunday_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_sunday_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_sunday_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'talkino_agent_schedule_sunday_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'talkino_agent_schedule_sunday_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'talkino_agent_schedule_sunday_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'talkino_agent_schedule_sunday_end_time'"
