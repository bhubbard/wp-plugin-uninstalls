-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wah_sidebar_widgets_order', 'wah_contrast_variations', 'wah_keyboard_navigation_setup', 'wah_readable_fonts_setup', 'wah_contrast_setup', 'wah_underline_links_setup', 'wah_highlight_links_enable', 'wah_greyscale_enable', 'wah_invert_enable', 'wah_remove_animations_setup', 'wah_remove_styles_setup', 'wah_lights_off_setup', 'wah_image_url', 'wah_hide_on_mobile', 'wah_left_side', 'wah_font_setup_type', 'wah_font_setup_title', 'wah_reset_font_size', 'wah_remove_styles_setup_title', 'wah_contrast_setup_title', 'wah_enable_custom_contrast', 'wah_choose_color_title', 'wah_underline_links_setup_title', 'wah_role_links_setup', 'wah_remove_link_titles', 'wah_clear_cookies_title', 'wah_close_button_title', 'wah_greyscale_title', 'wah_darktheme_enable', 'wah_highlight_links_title', 'wah_invert_title', 'wah_remove_animations_title', 'wah_readable_fonts_title', 'wah_custom_font', 'wah_skiplinks_setup', 'wah_keyboard_navigation_title', 'wah_lights_off_title', 'wah_lights_selector', 'wah_custom_logo_position', 'wah_logo_top', 'wah_logo_right', 'wah_logo_bottom', 'wah_logo_left', 'wah_header_element_selector', 'wah_sidebar_element_selector', 'wah_footer_element_selector', 'wah_main_element_selector', 'wah_nav_element_selector', 'wah_custom_css', 'wah_author_credits');
DELETE FROM wp_options WHERE option_name IN ('wah_font_setup', 'wah_remove_styles_title', 'wah_hidden_stats', 'wah_on_off_title', 'wah_stats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

