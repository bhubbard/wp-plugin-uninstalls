#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdfv_version'
wp option delete 'wpdfv_settings'
wp option delete 'wpdfv_settings_readmore_button_text'
wp option delete 'wpdfv_settings_enable_print'
wp option delete 'wpdfv_settings_enable_font_awesome'
wp option delete 'wpdfv_settings_enable_fullscreen'
wp option delete 'wpdfv_settings_btn_bg_color'
wp option delete 'wpdfv_settings_btn_text_color'
wp option delete 'wpdfv_settings_btn_hover_bg_color'
wp option delete 'wpdfv_settings_btn_hover_text_color'
wp option delete 'wpdfv_settings_btn_text_fontsize'
wp option delete 'wpdfv_settings_btn_icon_fontsize'
wp option delete 'wpdfv_settings_btn_padding'

