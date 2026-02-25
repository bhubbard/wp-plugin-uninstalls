#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pp_admin_page'
wp option delete 'wppasspro_page_fimg'
wp option delete 'wpe_adpage_class'
wp option delete 'wpe_adpage_mode'
wp option delete 'wpe_adpage_style'
wp option delete 'wpe_adpage_text_align'
wp option delete 'wpe_adpage_infotitle'
wp option delete 'wpe_adpage_titletag'
wp option delete 'wpe_adpage_text'
wp option delete 'wpe_adpage_shortcode'
wp option delete 'wpe_adpage_login_mode'
wp option delete 'wpe_adpage_login_url'
wp option delete 'wpe_adpage_btntext'
wp option delete 'wpe_adpage_btnclass'
wp option delete 'wpe_adpage_form_head'
wp option delete 'wpe_adpage_user_placeholder'
wp option delete 'wpe_adpage_password_placeholder'
wp option delete 'wpe_adpage_form_remember'
wp option delete 'wpe_adpage_remember_text'
wp option delete 'wpe_adpage_wrongpassword'
wp option delete 'wpe_adpage_errorlogin'
wp option delete 'wpe_adpage_formbtn_text'
wp option delete 'wpe_adpage_width'
wp option delete 'wpe_adpage_header_show'
wp option delete 'wpe_adpage_comment'
wp option delete 'kirki_downloaded_font_files'
wp option delete 'pp_basic_settings'
wp option delete 'wpeditpass_info_randtext'
wp option delete 'wpeditpass_offadded'
wp option delete 'wp_edit_pass_install_date'
wp option delete 'wpepp_update_1_3_dismissed'
wp option delete 'wppasspro_form_style'
wp option delete 'wppasspro_icons_style'
wp option delete 'wppasspro_icons_vposition'
wp option delete 'wppasspro_error_text_position'
wp option delete 'wppasspro_form_label'
wp option delete 'wppasspro_form_btn_text'
wp option delete 'wppasspro_show_top_text'
wp option delete 'wppasspro_top_text_align'
wp option delete 'wppasspro_top_header'
wp option delete 'wppasspro_top_content'
wp option delete 'wppasspro_show_bottom_text'
wp option delete 'wppasspro_bottom_text_align'
wp option delete 'wppasspro_bottom_header'
wp option delete 'wppasspro_bottom_content'
wp option delete 'wppasspro_show_social'
wp option delete 'wppasspro_icons_alignment'
wp option delete 'wppasspro_link_facebook'
wp option delete 'wppasspro_link_twitter'
wp option delete 'wppasspro_link_youtube'
wp option delete 'wppasspro_link_instagram'
wp option delete 'wppasspro_link_linkedin'
wp option delete 'wppasspro_link_pinterest'
wp option delete 'wppasspro_link_tumblr'
wp option delete 'wppasspro_link_custom'
wp option delete 'wppasspro_form_errortext'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wpepp_install_date'

# Delete Transients
wp transient delete 'kirki_googlefonts_cache'
wp transient delete 'kirki_googlefont_names_cache'
wp transient delete 'kirki_remote_url_contents'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_device_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_device_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_device_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_device_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_day_of_week'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_day_of_week'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_day_of_week'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_day_of_week'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_time_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_time_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_time_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_time_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_time_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_time_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_time_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_time_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_date_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_date_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_date_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_date_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_date_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_date_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_date_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_date_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_recurring_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_recurring_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_recurring_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_recurring_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_recurring_time_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_recurring_time_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_recurring_time_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_recurring_time_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_recurring_time_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_recurring_time_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_recurring_time_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_recurring_time_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_browser_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_browser_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_browser_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_browser_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_url_parameter_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_url_parameter_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_url_parameter_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_url_parameter_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_url_parameter_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_url_parameter_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_url_parameter_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_url_parameter_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_referrer_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_referrer_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_referrer_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_referrer_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_display_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_display_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_display_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_display_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_display_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_display_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_display_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_display_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_control_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_control_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_control_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_control_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpepp_conditional_control_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpepp_conditional_control_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpepp_conditional_control_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpepp_conditional_control_featured_image'"
