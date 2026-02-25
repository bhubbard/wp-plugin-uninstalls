-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdfv_version', 'wpdfv_settings', 'wpdfv_settings_readmore_button_text', 'wpdfv_settings_enable_print', 'wpdfv_settings_enable_font_awesome', 'wpdfv_settings_enable_fullscreen', 'wpdfv_settings_btn_bg_color', 'wpdfv_settings_btn_text_color', 'wpdfv_settings_btn_hover_bg_color', 'wpdfv_settings_btn_hover_text_color', 'wpdfv_settings_btn_text_fontsize', 'wpdfv_settings_btn_icon_fontsize', 'wpdfv_settings_btn_padding');

