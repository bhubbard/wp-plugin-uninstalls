-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ariksac_activated', 'ariksac_version', 'active_sitewide_plugins', 'ariksac_message_template', 'ariksac_whatsapp_number', 'ariksac_deactivated', 'ariksac_button_position', 'ariksac_button_bg_color', 'ariksac_button_bg_hover_color', 'ariksac_button_text_color', 'ariksac_button_text_hover_color', 'ariksac_button_font_size', 'ariksac_icon_size', 'ariksac_icon_gap', 'ariksac_button_border_radius', 'ariksac_custom_whatsapp_icon', 'ariksac_button_padding_top', 'ariksac_button_padding_right', 'ariksac_button_padding_bottom', 'ariksac_button_padding_left', 'ariksac_button_text', 'ariksac_enable_for_variable', 'ariksac_order_status');

