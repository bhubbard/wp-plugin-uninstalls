-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kontur_button_text', 'kontur_button_text_copied', 'kontur_copy_code_button_color', 'kontur_copy_code_button_background', 'kontur_copy_button_logo', 'kontur_copy_button_use_logo', 'kontur_pre_background', 'kontur_pre_text', 'kontur_copy_button_class', 'kontur_copy_text_safari', 'kontur_copy_text_other_browser', 'kontur_icon_background', 'kontur_icon_color');

