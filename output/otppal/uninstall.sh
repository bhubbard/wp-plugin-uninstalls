#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'otppal_api_key'
wp option delete 'otppal_phone_format'
wp option delete 'otppal_default_country'
wp option delete 'otppal_enable_otp_login'
wp option delete 'otppal_phone_required_signup'
wp option delete 'otppal_login_bg_color'
wp option delete 'otppal_login_bg_color_hover'
wp option delete 'otppal_login_text_color'
wp option delete 'otppal_login_text_color_hover'
wp option delete 'otppal_login_border_color'
wp option delete 'otppal_login_border_color_hover'
wp option delete 'otppal_login_border_width'
wp option delete 'otppal_login_border_width_hover'
wp option delete 'otppal_login_border_radius'
wp option delete 'otppal_login_border_radius_hover'
wp option delete 'otppal_login_button_text'
wp option delete 'otppal_login_padding'
wp option delete 'otppal_login_padding_hover'
wp option delete 'otppal_modal_phone_title'
wp option delete 'otppal_modal_phone_description'
wp option delete 'otppal_modal_phone_button'
wp option delete 'otppal_modal_loading_title'
wp option delete 'otppal_modal_loading_description'
wp option delete 'otppal_modal_otp_title'
wp option delete 'otppal_modal_otp_description'
wp option delete 'otppal_modal_otp_change_phone'
wp option delete 'otppal_modal_otp_button'
wp option delete 'otppal_modal_success_title'
wp option delete 'otppal_modal_success_description'
wp option delete 'otppal_modal_bg_color'
wp option delete 'otppal_modal_border_radius'
wp option delete 'otppal_modal_padding'
wp option delete 'otppal_modal_max_width'
wp option delete 'otppal_modal_overlay_color'
wp option delete 'otppal_modal_title_color'
wp option delete 'otppal_modal_title_font_size'
wp option delete 'otppal_modal_description_color'
wp option delete 'otppal_modal_description_font_size'
wp option delete 'otppal_modal_button_bg_color'
wp option delete 'otppal_modal_button_bg_color_hover'
wp option delete 'otppal_modal_button_text_color'
wp option delete 'otppal_modal_button_text_color_hover'
wp option delete 'otppal_modal_button_border_color'
wp option delete 'otppal_modal_button_border_color_hover'
wp option delete 'otppal_modal_button_border_width'
wp option delete 'otppal_modal_button_border_width_hover'
wp option delete 'otppal_modal_button_padding'
wp option delete 'otppal_modal_button_border_radius'
wp option delete 'otppal_modal_button_font_size'
wp option delete 'otppal_modal_otp_input_border_color'
wp option delete 'otppal_modal_otp_input_border_color_focus'
wp option delete 'otppal_modal_otp_input_border_color_error'
wp option delete 'otppal_modal_otp_input_bg_color'
wp option delete 'otppal_modal_otp_input_border_width'
wp option delete 'otppal_modal_otp_input_border_radius'
wp option delete 'otppal_modal_otp_input_padding'
wp option delete 'otppal_modal_otp_input_font_size'
wp option delete 'otppal_modal_phone_input_border_color'
wp option delete 'otppal_modal_phone_input_border_color_focus'
wp option delete 'otppal_modal_phone_input_border_color_error'
wp option delete 'otppal_modal_phone_input_bg_color'
wp option delete 'otppal_modal_phone_input_border_width'
wp option delete 'otppal_modal_phone_input_border_radius'
wp option delete 'otppal_modal_phone_input_padding'
wp option delete 'otppal_modal_phone_input_font_size'
wp option delete 'otppal_modal_change_phone_color'
wp option delete 'otppal_modal_error_bg_color'
wp option delete 'otppal_modal_error_text_color'
wp option delete 'otppal_modal_error_border_color'
wp option delete 'otppal_modal_success_icon_bg_color'
wp option delete 'otppal_modal_success_icon_color'
wp option delete 'otppal_modal_success_icon_size'
wp option delete 'otppal_modal_spinner_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otppal_current_warnings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otppal_current_warnings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otppal_current_warnings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otppal_current_warnings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otppal_dismissed_warnings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otppal_dismissed_warnings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otppal_dismissed_warnings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otppal_dismissed_warnings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otppal_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otppal_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otppal_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otppal_phone'"
