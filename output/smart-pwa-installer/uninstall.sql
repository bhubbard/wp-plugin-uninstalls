-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smrpwa_app_name', 'smrpwa_app_short_name', 'smrpwa_app_theme_color', 'smrpwa_app_bg_color', 'smrpwa_app_icon_192', 'smrpwa_app_icon_512', 'smrpwa_button_text', 'smrpwa_button_bg_color', 'smrpwa_button_text_color', 'smrpwa_pos_vertical', 'smrpwa_pos_horizontal');

